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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answerText) => Answer(answerText, _onAnswerClick))
                .toList(),
          ],
        ),
      ),
    );
  }
}
