
import 'package:flutterquizzler/question.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: "Pregunta 0001", a: true),
    Question(q: "Pregunta 0002", a: true),
    Question(q: "Pregunta 0003", a: false),
    Question(q: "Pregunta 0004", a: true),
    Question(q: "Pregunta 0005", a: false),
    Question(q: "Pregunta 0006", a: true),
  ];

  void nextQuestion(){
    if(_questionNumber<_questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }


  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }


}