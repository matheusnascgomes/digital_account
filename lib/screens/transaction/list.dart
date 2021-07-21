import 'package:conta_digital/http/clients/transaction_client.dart';
import 'package:conta_digital/models/transaction.dart';
import 'package:conta_digital/screens/transaction/components/item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final TransactionClient transactionClient = new TransactionClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transações'),
      ),
      body: FutureBuilder<List<Transaction>>(
        future: transactionClient.findTransaction(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return TransactionItem(snapshot.data?.elementAt(index));
                },
              );
            case ConnectionState.none:
            case ConnectionState.active:
            default:
              return Center(child: Text('Não há transações a serem exibidas'));
          }
        },
      ),
    );
  }
}
