import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  
  final int score;
  final Function restartQuiz;
  
  Result(this.score,this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,
      margin: EdgeInsets.all(30),
      child : Column(
        children: [
            Text("Your Score is ${this.score}",
                style: TextStyle(fontSize:28,color: Colors.red),
                textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: this.restartQuiz, 
              child: Text("Restart Quiz"),color: Colors.blue,
            )
        ],
      )

    );
  }
}