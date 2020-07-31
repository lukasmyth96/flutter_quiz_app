import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _onAnswerClick() {
    setState(() {
      _questionIndex++;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite colour?',
      'what\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _onAnswerClick,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _onAnswerClick,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _onAnswerClick,
            ),
          ],
        ),
      ),
    );
  }
}
