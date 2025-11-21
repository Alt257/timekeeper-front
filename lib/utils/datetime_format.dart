import 'dart:io';

import 'package:intl/intl.dart';

extension DateTimeFormatExtension on DateTime {
  static final locale = Platform.localeName;

  String toTime() => DateFormat.Hm(locale).format(this);
  String toDay() => DateFormat.MMMMEEEEd(locale).format(this);
}