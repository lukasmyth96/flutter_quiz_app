import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
            Answer('Answer 1', _onAnswerClick),
            Answer('Answer 2', _onAnswerClick),
            Answer('Answer 3', _onAnswerClick),
          ],
        ),
      ),
    );
  }
}
