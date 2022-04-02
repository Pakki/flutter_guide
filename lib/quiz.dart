import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final Function answerQuestion;

  Quiz(this.question, this.answers, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Question(question),
        ...answers.map((answer) {
          return Answer(answer, answerQuestion);
        }),
      ],
    ));
  }
}
