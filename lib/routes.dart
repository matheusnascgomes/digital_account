import 'package:conta_digital/screens/contacts/list.dart';
import 'package:conta_digital/screens/contacts/new.dart';
import 'package:conta_digital/screens/dashboard.dart';
import 'package:conta_digital/screens/transaction/list.dart';
import 'package:conta_digital/screens/transfer/form.dart';
import 'package:conta_digital/screens/transfer/list.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => Dashboard(),
  '/contacts': (context) => Contacts(),
  '/contact' : (context) => NewContact(),
  '/transfers': (context) => TransferList(),
  '/form': (context) => TransferForm(),
  '/transactions': (context) => TransactionList()
};
