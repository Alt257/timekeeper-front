import 'package:flutter/material.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/utils/datetime_format.dart';
import 'package:timekeeper/view/component/icon/custom_icon.dart';

final class ActivityListTile extends ListTile {
  ActivityListTile(Activity activity, {
    super.key,
    required void Function() onStopActivityPressed,
    required void Function() onEditActivityPressed,
    required void Function() onDeleteActivityPressed,
  }): super(
    tileColor: activity.isInProgress ? Colors.green : null,
    textColor: activity.isInProgress ? Colors.white : null,
    iconColor: activity.isInProgress ? Colors.white : null,
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(8)),
    dense: false,
    isThreeLine: true,
    titleAlignment: ListTileTitleAlignment.titleHeight,
    title: Text(activity.type.label),
    subtitle: Text(activity.item.toString()),
    leading: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(activity.startedAt.toDay()),
        Text(activity.startedAt.Hm),
        if(activity.finishedAt != null)
          Text(activity.finishedAt!.Hm),
      ],
    ),
    trailing: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if(activity.isInProgress) IconButton(
          onPressed: onStopActivityPressed,
          // icon: Icon(Icons.timer_outlined),
          icon: CustomIcon.stopActivity(),
        ),
        IconButton(
          onPressed: onEditActivityPressed,
          icon: CustomIcon.editActivity(),
        ),
        IconButton(
          onPressed: onDeleteActivityPressed,
          // icon: Icon(Icons.delete_forever),
          icon: CustomIcon.deleteActivity(),
        ),
      ],
    ),
  );
}