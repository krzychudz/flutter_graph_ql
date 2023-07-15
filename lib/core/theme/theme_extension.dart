import 'package:flutter/material.dart';

extension BuildContextThemeExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
