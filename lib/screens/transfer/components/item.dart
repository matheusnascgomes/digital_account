import 'package:conta_digital/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferItem extends StatelessWidget {
  final Transfer transfer;

  TransferItem(this.transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
        ),
        title: Text(transfer.value.toString()),
        subtitle: Text(transfer.accountNumber.toString()),
      ),
    );
  }
}