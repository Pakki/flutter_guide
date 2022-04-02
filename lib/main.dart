import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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

  final _questionsAnswers = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['red', 'green', 'blue'],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['cat', 'dog', 'lama'],
    },
    {
      'question': 'What\'s your favorite personage?',
      'answers': ['Chip', 'Dale', 'Roquefort', 'Gadget', 'Zipper'],
    },
  ];
  _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    print('Answer choosen!');
  }

  _resetState() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: _questionIndex < _questionsAnswers.length
            ? Quiz(
                _questionsAnswers[_questionIndex]['question'],
                _questionsAnswers[_questionIndex]['answers'],
                _answerQuestion,
              )
            : Result(_resetState),
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
