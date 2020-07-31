import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  Function onAnswerClick;

  Answer(this.answerText, this.onAnswerClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: onAnswerClick,
      ),
    );
  }
}
