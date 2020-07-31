import 'package:flutter/material.dart';

class CompletionPage extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  CompletionPage(this.finalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'You scored ${finalScore.toString()} points!',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: resetHandler,
          ),
        ]);
  }
}
