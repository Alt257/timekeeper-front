import 'package:flutter/material.dart';

final class ActivityTypeSelection extends StatelessWidget {
  const ActivityTypeSelection({super.key});
  
  static const activities = [
    'garniture (metal)',
    'garniture (cuir)',
    'remêchage',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: (textEditingValue) => textEditingValue.text == ''
          // ? const Iterable<String>.empty()
          ? activities
          : activities.where((element) => element.contains(textEditingValue.text.toLowerCase()),),

      onSelected: (option) => print('Activity type: $option'),

      optionsViewOpenDirection: OptionsViewOpenDirection.up,

      fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
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
            hintText: 'activité',
            suffixIcon: IconButton(
              onPressed: () {
                print('X pressed');
                textEditingController.clear();
              },
              icon: Icon(Icons.close),
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
                  title: Text(options.elementAt(index)),
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