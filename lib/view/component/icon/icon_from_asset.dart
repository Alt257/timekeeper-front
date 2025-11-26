import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final class IconFromAsset extends StatelessWidget {
  final String path;
  final Color? color;
  final double? size;

  const IconFromAsset(this.path, {super.key, this.color, this.size});

  factory IconFromAsset.deleteActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Poubelle2.svg',
    key: key,
    color: color,
    size: size,
  );
  factory IconFromAsset.editActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Crayon2.svg',
    key: key,
    color: color,
    size: size,
  );

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path,
      width: size ?? Theme.of(context).iconTheme.size,
      height: size ?? Theme.of(context).iconTheme.size,
      theme: SvgTheme(currentColor: color ?? Theme.of(context).iconTheme.color ?? Colors.grey[800]!),
      // colorFilter: ColorFilter.mode(
      //   activity.isInProgress ? Colors.white : Colors.grey[800]!,
      //   BlendMode.srcIn,
      // ),
    );
  }
}