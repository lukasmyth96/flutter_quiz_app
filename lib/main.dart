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
  var _score = 0;
  var _quizUnfinished = true;

  static const questions = [
    {
      'questionText': 'what are the tallest trees on earth?',
      'answers': ['Coast Redwood', 'Giant Sequoia', 'Sitka Spruce'],
      'correctAnswer': 'Coast Redwood',
    },
    {
      'questionText': 'Longest human hair was over 5m long?',
      'answers': ['true', 'false'],
      'correctAnswer': 'true',
    },
    {
      'questionText': 'You weight more on Mars than Earth?',
      'answers': ['true', 'false'],
      'correctAnswer': 'false',
    },
  ];

  void _onAnswerClick(answerText) {
    setState(() {
      if (answerText == questions[_questionIndex]['correctAnswer']) {
        _score++;
      }
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
          title: Text('Current Score: ${_score.toString()}'),
        ),
        body: _quizUnfinished
            ? Quiz(questions, _questionIndex, _onAnswerClick)
            : CompletionMessage('Your scored: ${_score.toString()} points!'),
      ),
    );
  }
}
