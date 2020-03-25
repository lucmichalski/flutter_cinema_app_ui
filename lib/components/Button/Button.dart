import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;

  final Function action;

  Button({@required this.text, this.action});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
        ),
        child: Text(text.toString(), style: TextStyle(fontSize: 11.0),)
      )
    );
  }

}