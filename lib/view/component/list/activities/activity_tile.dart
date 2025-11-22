import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timekeeper/entity/activity/activity.dart';
import 'package:timekeeper/utils/datetime_format.dart';

final class ActivityListTile extends ListTile {
  ActivityListTile(Activity activity, {
    super.key,
  }): super(
    tileColor: activity.isInProgress ? Colors.green : null,
    textColor: activity.isInProgress ? Colors.white : null,
    iconColor: activity.isInProgress ? Colors.white : null,
    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(8)),
    dense: false,
    isThreeLine: true,
    titleAlignment: ListTileTitleAlignment.threeLine,
    title: Text(activity.type.label),
    subtitle: Text(activity.item.toString()),
    leading: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(activity.startedAt.toDay()),
        Text(activity.startedAt.toTime()),
        if(activity.finishedAt != null)
          Text(activity.finishedAt!.toTime()),
      ],
    ),
    trailing: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if(activity.isInProgress) IconButton(
          onPressed: () => (),
          icon: Icon(Icons.timer_outlined),
        ),
        IconButton(
          onPressed: () => (),
          // icon: Icon(Icons.edit),
          icon: SvgPicture.asset('assets/icon/Crayon.svg',
            width: 24,
            height: 24,
            theme: SvgTheme(currentColor: activity.isInProgress ? Colors.white : Colors.grey[800]!),
            // colorFilter: ColorFilter.mode(
            //   activity.isInProgress ? Colors.white : Colors.grey[800]!,
            //   BlendMode.srcIn,
            // ),
          ),
        ),
        IconButton(
          onPressed: () => (),
          // icon: Icon(Icons.delete_forever),
          icon: SvgPicture.asset('assets/icon/Poubelle.svg',
            width: 24,
            height: 24,
            theme: SvgTheme(currentColor: activity.isInProgress ? Colors.white : Colors.grey[800]!),
            // colorFilter: ColorFilter.mode(
            //   activity.isInProgress ? Colors.white : Colors.grey[800]!,
            //   BlendMode.srcIn,
            // ),
          ),
        ),
      ],
    ),
  );
}