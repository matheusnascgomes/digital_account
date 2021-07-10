import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Fulano',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '012364',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/contact');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
