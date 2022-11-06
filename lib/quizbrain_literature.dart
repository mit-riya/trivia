import 'question.dart';

class QuizBrainLiterature{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question(q: "The words chortle and galumph were both invented by Lewis Carroll.", a: true),
    Question(q: "“Empyreal” means something related to an empire.", a: false),
    Question(q: "Alliteration is the use of repeated sounds for poetic effect.", a: true),
    Question(q: "Sanskrit has never had a formal grammar.", a: false),
    Question(q: "The poet W. B. Yeats was from England.", a: false),
    Question(q: "Agatha Christie wrote only novels.", a: false),
    Question(q: "The Sound and the Fury is a novel by American writer William Faulkner.", a: true),
    Question(q: "Nadine Gordimer is the first South African to win the Nobel Prize for literature.", a: true),
    Question(q: "The Brothers Grimm, authors of fairy tales such as “Hansel and Gretel,” were from Germany.", a: true),
    Question(q: "The language of the Rom, or Gypsy, people comes from India.", a: true),
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