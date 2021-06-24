import 'package:flutter/material.dart';

final Color color = Color.fromRGBO(8, 111, 176, 1);

final ThemeData theme = ThemeData(
  primaryColor: color,
  accentColor: color,
  buttonTheme: ButtonThemeData(
    buttonColor: color,
    textTheme: ButtonTextTheme.primary,
  ),
);
