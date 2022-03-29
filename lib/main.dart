import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  var answers = [
    ['red', 'green', 'blue'],
    ['cat', 'dog', 'lama'],
  ];
  _answerQuestion() {
    setState(() {
      _questionIndex++;
      if (_questionIndex > questions.length - 1) {
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
    print('Answer choosen!');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Center(
            child: Column(
          children: [
            Question(questions[_questionIndex]),
            ...answers[_questionIndex].map((answer) {
              return Answer(answer, _answerQuestion);
            }),
          ],
        )),
      ),
    );
  }
}

myAppBar() {
  var myBar = AppBar(
    title: Text('App demo'),
  );
  return myBar;
}
