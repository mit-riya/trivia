import 'question.dart';

class QuizBrainEntertainment{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question(q: "In the animation film “Finding Nemo,” the main protagonist is a pufferfish.", a: false),
    Question(q: "Walt Disney has the record for most Academy Awards.", a: true),
    Question(q: "In the famous movie Harry Potter, Draco Malfoy doesn’t have a sibling.", a: false),
    Question(q: "Michael Jackson and Nicolas Cage both married the same lady.", a: true),
    Question(q: "James Cameron actually drew the sketch of Rose in Titanic.", a: true),
    Question(q: "The Lord of the Rings movies filmed in New Zealand.", a: true),
    Question(q: "James Earl Jones was the first Black person to win an Oscar.", a: false),
    Question(q: "Billy Warp was selected to tour the Wonka factory in Willy Wonka and the Chocolate Factory.", a: false),
    Question(q: "Arendelle is the name of the fictional land where Frozen takes place.", a: true),
    Question(q: "Elle Woods get 170 on her LSAT in Legally Blonde.", a: false),
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