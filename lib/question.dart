import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
      questionText,
      style: TextStyle(fontSize: 30),
      textAlign: TextAlign.center,
    ));
  }
}
