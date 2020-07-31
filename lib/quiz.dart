import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  int questionIndex;
  Function onAnswerClick;

  Quiz(this.questions, this.questionIndex, this.onAnswerClick);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answerText) =>
                Answer(answerText, () => onAnswerClick(answerText)))
            .toList(),
      ],
    );
  }
}
