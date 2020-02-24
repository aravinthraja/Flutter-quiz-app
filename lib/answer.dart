import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  final String _answerText;
  Answer(this._answerQuestion,this._answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child :RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(this._answerText),
            onPressed: this._answerQuestion
          ),
    );
  }
}