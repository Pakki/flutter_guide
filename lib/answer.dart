import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandler;

  Answer(this.answerText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 20),
      primary: Colors.blue,
    );
    return Container(
        child: ElevatedButton(
      style: style,
      onPressed: answerHandler,
      child: Text(answerText),
    ));
  }
}
