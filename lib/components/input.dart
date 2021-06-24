import 'package:flutter/material.dart';

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