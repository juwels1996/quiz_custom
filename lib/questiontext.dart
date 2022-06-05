import 'package:flutter/material.dart';
class Question extends StatelessWidget {
 final String questiontext;
  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questiontext,
        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18) ,


      ),
    );
  }
}
