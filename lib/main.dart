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
  int _score = 0;
  final _questionsAnswers = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'points': 10},
        {'text': 'green', 'points': 15},
        {'text': 'blue', 'points': 5}
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'points': 5},
        {'text': 'dog', 'points': 10},
        {'text': 'lama', 'points': 15}
      ],
    },
    {
      'question': 'What\'s your favorite personage?',
      'answers': [
        {'text': 'Chip', 'points': 6},
        {'text': 'Dale', 'points': 6},
        {'text': 'Roquefort', 'points': 7},
        {'text': 'Gadget', 'points': 10},
        {'text': 'Zipper', 'points': 3}
      ],
    },
  ];
  _answerQuestion(int points) {
    setState(() {
      _questionIndex++;
    });
    _score += points;
    print(_questionIndex);
    print('Answer choosen!');
  }

  _resetState() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
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
            : Result(_resetState, _score),
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
