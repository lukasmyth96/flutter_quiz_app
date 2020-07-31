import 'package:flutter/material.dart';

class CompletionMessage extends StatelessWidget {
  final String message;

  CompletionMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
