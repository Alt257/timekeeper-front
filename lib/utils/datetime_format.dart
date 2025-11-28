import 'dart:io';

import 'package:intl/intl.dart';

extension DateTimeFormatExtension on DateTime {
  static final locale = Platform.localeName;

  String get Hm => DateFormat.Hm(locale).format(this);
  String get MMMMEEEEd => DateFormat.MMMMEEEEd(locale).format(this);
  String get MMMMEEEEdy => DateFormat.MMMMEEEEd(locale).add_y().format(this);
}