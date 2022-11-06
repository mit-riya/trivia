import 'question.dart';

class QuizBrainSports{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question(q: "In cricket, a score of '111' is referred to as a Nelson.", a: true),
    Question(q: "A golf ball is the fastest recorded object in sports.", a: false),
    Question(q: "A soccer ball is bigger than a basketball.", a: false),
    Question(q: "There are 22 balls in the game of snooker.", a: true),
    Question(q: "Polo is not an Olympic sport.", a: true),
    Question(q: "In the Tour de France, the winner wears a red jersey.", a: false),
    Question(q: "The game mah-jongg takes its name from a mythical bird.", a: true),
    Question(q: "A dartboard is divided into 20 numbered sections.", a: true),
    Question(q: "The anchorite is the last leg of a relay race.", a: false),
    Question(q: "In automobile racing, a blue flag warns of possible danger and orders drivers to slow down.", a: false),
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