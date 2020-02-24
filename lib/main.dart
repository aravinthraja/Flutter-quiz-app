
import 'package:first_app/Result.dart';
import 'package:first_app/quiz.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class  _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question" : "What is the Favorite Animal?",
      "answer" : [
          {"text":'Dog',"score":10},
          {"text":'Cat',"score":2},
          {"text":'Fish',"score":3},
          {"text":'Bird',"score":4},
        ]
    },
    {
      "question" : "What's is the Scret of Life?",
      "answer" : [ 
          {"text":'Get Back up',"score":10},
          {"text":'Focus',"score":20},
          {"text":'Failure',"score":3},
          {"text":'Taunt',"score":4},
        ]
    }
  ];
  int _questionNo = 0;
  int _total = 0;
  

  void restartQuiz(){
     setState(() {
      _total = 0;
      _questionNo = 0;
    });
  }
  void _answerQuestion(int score){

    _total +=  score;
    setState(() {
      _questionNo = _questionNo+1;
    });

    print(_questionNo);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title:Center(
          child: Text("Questions 1",style: TextStyle(fontSize: 26,color: Colors.blue)),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body  : (_questionNo < _questions.length) 
            ? Quiz(_answerQuestion, _questions, _questionNo) 
            : Result(this._total,this.restartQuiz),
      )
    );
  }
}