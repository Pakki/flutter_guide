import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// to run app we use main function
//void main() {
//  runApp(MyApp());
//}

// same main but with arrow function
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
  final questions = const [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  final answers = const [
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
