import 'package:conta_digital/components/input.dart';
import 'package:conta_digital/models/contact.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final TextEditingController _nameControl = TextEditingController();

  final TextEditingController _numberControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Column(
        children: [
          MyInputText(
            textController: _nameControl,
            icon: Icons.person,
            label: 'Nome',
          ),
          MyInputText(
            textController: _numberControl,
            label: 'Numero',
            icon: Icons.dialpad,
          ),
          ElevatedButton(
              onPressed: () {
                var contact = Contact(
                  this._nameControl.text,
                  int.parse(this._numberControl.text),
                );
                debugPrint(contact.toString());
              },
              child: const Text('Submeter'))
        ],
      ),
    );
  }
}
