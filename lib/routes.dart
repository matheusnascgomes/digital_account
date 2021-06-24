import 'package:conta_digital/screens/transfer/form.dart';
import 'package:conta_digital/screens/transfer/list.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => TransferList(),
  '/form': (context) => TransferForm()
};
