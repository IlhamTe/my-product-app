import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
