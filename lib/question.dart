import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          fontStyle: FontStyle.italic,
        ),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
