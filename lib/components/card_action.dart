import 'package:conta_digital/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;


  CardAction(this.title, this.icon, this.route);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: defaultPrimaryColor,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, this.route);
        },
        child: Container(
          height: 100,
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  this.icon,
                  color: Colors.white,
                ),
                Text(
                  this.title,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
