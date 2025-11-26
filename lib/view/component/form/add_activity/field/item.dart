import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeper/entity/item/archet/archet.dart';
import 'package:timekeeper/entity/item/item.dart';
import 'package:timekeeper/entity/item/violon/violon.dart';
import 'package:timekeeper/view/component/form/add_activity/add_activity_bloc.dart';
import 'package:timekeeper/view/component/form/field/search_or_create.dart';

final class ItemSelection extends StatelessWidget {
  const ItemSelection({super.key});

  static List<Item> activities = [
    Violon(id: 'V1'),
    Violon(id: 'V2'),
    Archet(id: 'A1'),
    Violon(id: 'V3'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddActivityBloc, AddActivityState>(
      buildWhen: (previous, current) => current.maybeWhen(
        filling: (_, currentSelectedItem) => previous.maybeWhen(
          success: (activity) => true,
          filling: (_, previousSelectedItem) => currentSelectedItem != previousSelectedItem,
          orElse: () => false,
        ),
        orElse: () => false,
      ),
      builder: (context, state) {
        return SearchOrCreateField(
          controller: TextEditingController(text: state.maybeWhen(
            filling: (selectedType, selectedItem) => selectedItem?.id,
            orElse: () => null,
          )),
          placeholder: 'objet',
          items: activities,
          searchIn: (item) => item.id,
          onSelected: (item) => context.read<AddActivityBloc>()
                  .add(AddActivityEvent.itemChanged(item)),
        );
      },
    );
  }
}