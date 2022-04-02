import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetState;
  final int score;

  Result(this.resetState, this.score);

  String get resultPhrase {
    String phrase = 'You can do better!';
    if (score > 30) {
      phrase = 'Fantastic!';
    } else if (score > 25) {
      phrase = 'Awesome!';
    } else if (score > 20) {
      phrase = 'Not bad!';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it!',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Text(
            'Your score is $score points! $resultPhrase',
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetState,
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
