import 'package:flutter/material.dart';

import 'package:first_app/Question.dart';
import 'package:first_app/answer.dart';

class Quiz extends StatelessWidget {

  final Function _answerQuestion;
  final List<Map<String,Object>> _questions;
  final int _questionNo;

  Quiz(this._answerQuestion,this._questions,this._questionNo);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Question(_questions[_questionNo]['question']),
          ...(_questions[_questionNo]['answer'] as List<Map<String,Object>>).map((answer){
            return Answer(() => _answerQuestion(answer['score']),answer['text']);
          }).toList() 
        ],
      );
  }
}