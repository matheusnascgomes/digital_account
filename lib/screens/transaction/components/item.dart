import 'package:conta_digital/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final Transaction? transaction;

  TransactionItem(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
        ),
        title: Text(transaction?.userName ?? ''),
        subtitle: Text(transaction?.value.toString() ?? ''),
      ),
    );
  }
}