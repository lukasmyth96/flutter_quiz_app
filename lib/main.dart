import 'package:flutter/material.dart';

import './quiz.dart';
import './completion_message.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _quizUnfinished = true;

  static const questions = [
    {
      'questionText': 'what\'s your favorite colour?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Rabbit', 'Snake']
    },
    {
      'questionText': 'who\'s your favorite instructor?',
      'answers': ['Bob', 'Bill', 'Max']
    },
  ];

  void _onAnswerClick() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex >= questions.length) {
      _quizUnfinished = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _quizUnfinished
            ? Quiz(questions, _questionIndex, _onAnswerClick)
            : CompletionMessage('You finished the Quiz!'),
      ),
    );
  }
}
