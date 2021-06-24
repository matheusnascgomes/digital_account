import 'package:conta_digital/routes.dart';
import 'package:conta_digital/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(Account());

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
