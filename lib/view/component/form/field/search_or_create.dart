import 'package:flutter/material.dart';

final class SearchOrCreateField<T extends Object> extends StatelessWidget {
  const SearchOrCreateField({super.key, this.placeholder, required this.items, required this.searchIn, required this.onSelected, this.controller});

  final String? placeholder;
  final List<T> items;
  final String Function(T item) searchIn;
  final Function(T item)? onSelected;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<T>(
      initialValue: controller == null ? const TextEditingValue()
          : TextEditingValue(text: controller!.text),

      optionsBuilder: (textEditingValue) => textEditingValue.text == ''
          ? items
          : items.where((element) => searchIn(element).contains(textEditingValue.text.toLowerCase())),

      onSelected: onSelected,

      optionsViewOpenDirection: OptionsViewOpenDirection.up,

      fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
        if (controller != null && controller!.text != textEditingController.text) {
          // This syncs them if the parent clears the controller
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (textEditingController.text != controller!.text) {
              textEditingController.text = controller!.text;
            }
          });
        }
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onEditingComplete: onFieldSubmitted,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blueAccent)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blue)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.lightBlueAccent)
            ),
            hintText: placeholder,
            suffixIcon: textEditingController.value.text.isEmpty ? null :
            // suffixIcon:
              IconButton(
                onPressed: () {
                  textEditingController.clear();
                },
                icon: Icon(Icons.close, size: 14,),
              ),
          ),
        );
      },

      optionsViewBuilder: (context, onSelected, options) => Align(
        alignment: Alignment.bottomLeft,
        child: Material(
          elevation: 4,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              // maxHeight: 600
            ),
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => ListTile(
                title: Text(searchIn(options.elementAt(index))),
                onTap: () => onSelected(options.elementAt(index)),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: options.length,
            ),
          ),
        ),
      ),
    );
  }
}