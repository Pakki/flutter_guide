import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: myAppBody(),
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

myAppBody() {
  answerQuestion() {
    print('Answer choosen!');
  }

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: 20),
    primary: Colors.blue,
  );
  var myBody = Column(
    children: [
      Text('Answer a question!'),
      RaisedButton(
        child: Text('Answer 1'),
        onPressed: () => print('answer 1 choosen'),
      ),
      RaisedButton(
        child: Text('Answer 2'),
        onPressed: () {
          print('Answer 2 choosen');
        },
      ),
      RaisedButton(
        child: Text('Answer 3'),
        onPressed: answerQuestion,
      ),
      ElevatedButton(
        style: style,
        onPressed: answerQuestion,
        child: Text('Answer4'),
      ),
    ],
  );
  return myBody;
}
