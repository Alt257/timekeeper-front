import 'package:flutter/animation.dart';

import 'icon_from_asset.dart';

sealed class CustomIcon {

  static deleteActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Poubelle2.svg',
    key: key,
    color: color,
    size: size,
  );

  static editActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Crayon2.svg',
    key: key,
    color: color,
    size: size,
  );

  static startActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Chrono_play.svg',
    key: key,
    color: color,
    size: size,
  );

  static stopActivity({dynamic key, Color? color, double? size}) => IconFromAsset(
    'assets/icon/Chrono_stop.svg',
    key: key,
    color: color,
    size: size,
  );
}