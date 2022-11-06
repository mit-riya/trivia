import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain_sports.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'main.dart';

QuizBrainSports quizBrainSports=QuizBrainSports();
class SportsQuiz extends StatefulWidget {
  const SportsQuiz({Key? key}) : super(key: key);

  @override
  State<SportsQuiz> createState() => _SportsQuizState();
}

class _SportsQuizState extends State<SportsQuiz> {
  List<Widget> scoreKeeper=[];
  void checkAnswer(bool userPickedAnswer){
    if(quizBrainSports.isFinished()==true){
      setState(() {
        Alert(
          context: context,
          title: "Fininshed",
          desc: "You've reached the end of the quiz",
        ).show();
        quizBrainSports.resetQuestion();
        scoreKeeper=[];
      });
    }
    else {
      bool correctAnswer = quizBrainSports.getQuestionAnswer();
      setState(() {
        if (correctAnswer == userPickedAnswer) {
          scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
        } else {
          scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
        }
        quizBrainSports.nextQuestion();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trivia"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
          Center(
            child: Text(quizBrainSports.getQuestionText(),textAlign: TextAlign.center,style: TextStyle(
              fontSize: 25.0,
              decoration: TextDecoration.none,
            ),),
          )
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 115.0,
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green, // Background Color
                ),
                child: const Text(
                  'True',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 115.0,
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red, // Background Color
                ),
                child: const Text(
                  'False',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
