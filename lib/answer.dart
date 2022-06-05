import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function sheikh;
  final String answerText;
   Answer(this.sheikh,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            child: Text(answerText),
            onPressed: () => sheikh,
        ),
      ),
    );
  }
}
