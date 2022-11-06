import 'question.dart';

class QuizBrainGeography{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question(q: "Venezuela is home to the world’s highest waterfall.", a: true),
    Question(q: "Four countries share their land borders with Switzerland.", a: false),
    Question(q: "The Philippines is an archipelagic country that has the most number of islands.", a: false),
    Question(q: "The USA has the longest coastline in the world.", a: false),
    Question(q: "Nepal is the only country in the world without a rectangular flag.", a: true),
    Question(q: "Tuvalu is the country is the smallest population.", a: false),
    Question(q: "Indonesia is the country with the most active volcanoes in the world.", a: true),
    Question(q: "The Pantheon in Rome used to be a Roman temple.", a: true),
    Question(q: "France and Slovenia share a border.", a: false),
    Question(q: "Kabul is the capital of Afghanistan.", a: true),
  ];
  void nextQuestion(){
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1){
      return true;
    }
    return false;
  }
  void resetQuestion(){
    _questionNumber=0;
  }
}