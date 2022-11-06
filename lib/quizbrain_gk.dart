import 'question.dart';

class QuizBrainGK{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question(q: "Spaghetto is the singular form of the word spaghetti.", a: true),
    Question(q: "Polar bears can only live in the Arctic region, not in the Antarctic.", a: true),
    Question(q: "In a regular deck of cards, all kings have a mustache.", a: false),
    Question(q: "Zeus is referred to as the king of the Greek gods and goddesses.", a: true),
    Question(q: "Switzerland’s currency is the Euro.", a: false),
    Question(q: "The letter ‘A’ is the most commonly used in the English language.", a: false),
    Question(q: "When going out of the cave, the bats always turn in the right direction.", a: false),
    Question(q: "Corn is the most widely cultivated and consumed crop on the planet.", a: true),
    Question(q: "South Africa officially has three capital cities.", a: true),
    Question(q: "Among the letters of the alphabet, only the letter J is not included in the periodic table.", a: true),
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