import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

int questionIndex = 0;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  answerQuestion() {
    setState(() {
      questionIndex++;
      if (questionIndex > questions.length - 1) {
        questionIndex = 0;
      }
    });

    print(questionIndex);
    print('Answer choosen!');
  }

  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: 20),
    primary: Colors.blue,
  );
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
              Text(questions[questionIndex]),
              ElevatedButton(
                style: style,
                onPressed: answerQuestion,
                child: Text('Answer4'),
              ),
            ],
          ),
        ),
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
