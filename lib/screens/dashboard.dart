import 'package:conta_digital/components/card_action.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/bytebank_logo.png'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                  child: CardAction('Contatos', Icons.people, '/contacts'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                  child: CardAction('Transações', Icons.monetization_on, '/transactions'),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
