import 'package:conta_digital/components/input.dart';
import 'package:conta_digital/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  final TextEditingController _accountControl = TextEditingController();
  final TextEditingController _valueControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova transação'),
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
      ),
    );
  }
}
