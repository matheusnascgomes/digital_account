import 'package:flutter/material.dart';

void main() => runApp(Account());

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            MyInputText('Número da Conta', Icons.dialpad, ''),
            MyInputText('Valor', Icons.monetization_on, '0.00'),
            ElevatedButton(onPressed: () => {}, child: const Text('Submeter'))
          ],
        ),
        appBar: AppBar(
          title: Text('Conta Digital!'),
          backgroundColor: Color.fromRGBO(8, 111, 176, 1),
        ),
      ),
    );
  }
}

class MyInputText extends StatelessWidget {
  final String label;
  final IconData icon;
  final String placeholder;

  MyInputText(this.label, this.icon, this.placeholder);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(this.icon),
            labelText: this.label,
            hintText: this.placeholder),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class Transfers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
            ),
            title: Text('xablauuu.0'),
            subtitle: Text('5000xxxx'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
            ),
            title: Text('100.0'),
            subtitle: Text('1000'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
            ),
            title: Text('50.0'),
            subtitle: Text('1xx000'),
          ),
        ),
      ],
    );
  }
}
