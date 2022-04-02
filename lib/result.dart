import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetState;

  Result(this.resetState);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          ElevatedButton(onPressed: resetState, child: Text('Reset')),
        ],
      ),
    );
  }
}
