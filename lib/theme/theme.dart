import 'package:flutter/material.dart';

final Color defaultPrimaryColor = Color.fromRGBO(24, 59, 101, 1);

final ThemeData theme = ThemeData(
  primaryColor: defaultPrimaryColor,
  accentColor: defaultPrimaryColor,
  buttonTheme: ButtonThemeData(
    buttonColor: defaultPrimaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
);
