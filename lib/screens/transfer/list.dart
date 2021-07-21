import 'package:conta_digital/models/transfer.dart';
import 'package:conta_digital/screens/transfer/components/item.dart';
import 'package:flutter/material.dart';

class TransferList extends StatefulWidget {
  final List<Transfer> _items = [];

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransferList> {
  final String emptyListText = 'Não transações a serem exibidas.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: widget._items.length == 0
          ? Center(child: Text(emptyListText))
          : ListView.builder(
              itemCount: widget._items.length,
              itemBuilder: (context, index) {
                final transfer = widget._items[index];
                return TransferItem(transfer);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future = Navigator.pushNamed(context, '/form');
          future.then((transfer) {
            if (transfer != null) {
              setState(() {
                widget._items.add(transfer);
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
