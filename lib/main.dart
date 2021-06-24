import 'package:flutter/material.dart';

void main() => runApp(Account());

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conta Digital!'),
          backgroundColor: Color.fromRGBO(8, 111, 176, 1),
        ),
        body: Transfers(),
        floatingActionButton: GoToTransferForm()
      ),
    );
  }
}

class GoToTransferForm extends StatelessWidget {
  const GoToTransferForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final Future<Transfer?> future =
        Navigator.push(context, MaterialPageRoute(builder: (builder) {
          return TransferForm();
        }));
        future.then((value) {
          debugPrint("xablau!");
        });
      },
      backgroundColor: Color.fromRGBO(8, 111, 176, 1),
      child: Icon(Icons.add),
    );
  }
}



class TransferForm extends StatelessWidget {
  final TextEditingController _accountControl = TextEditingController();
  final TextEditingController _valueControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conta Digital!'),
        backgroundColor: Color.fromRGBO(8, 111, 176, 1),
      ),
      body: Column(
        children: [
          MyInputText(
            textController: _accountControl,
            icon: Icons.dialpad,
            label: 'Número da Conta',
          ),
          MyInputText(
            textController: _valueControl,
            label: 'Valor',
            placeholder: '0.00',
            icon: Icons.monetization_on,
          ),
          ElevatedButton(
              onPressed: () {
                final int? accountNumber = int.tryParse(_accountControl.text);
                final double? value = double.tryParse(_valueControl.text);
                if (accountNumber != null && value != null) {
                  final newTransfer = Transfer(value, accountNumber);
                  debugPrint('Criando transferência');
                  debugPrint('$newTransfer');
                  Navigator.pop(context, newTransfer);
                }
              },
              child: const Text('Submeter'))
        ],
      )
    );
  }
}

class MyInputText extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final String? placeholder;
  final TextEditingController? textController;

  MyInputText({this.label, this.icon, this.placeholder, this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: textController,
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

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);

  @override
  String toString() {
    return 'Transferencia{valor: $value, numeroConta: $accountNumber}';
  }
}
