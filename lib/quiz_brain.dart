import 'question.dart';

class QuizBrain {
  int _questionInitState = 0;

  final List<Question> _questionBank = [
    Question("Tinubu is the current president of Nigeria?", true),
    Question('Green, White and Red is the color of Nigeria flag?', false),
    Question('Flutter is a programming language?', true),
    Question('Java and JavaScript are related?', false),
  ];

  String getQuestionText() {
    return _questionBank[_questionInitState].question.toString();
  }

  bool? getQuestionAns() {
    return _questionBank[_questionInitState].ans;
  }

  // next question
  void nextQuestion() {
    if (_questionInitState < _questionBank.length - 1) {
      _questionInitState++; //
    }
  }

  // isfinished method to check if the length of question bank is less than or equal to the questionInitState
  bool isFinished() {
    if (_questionInitState >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionInitState = 0;
  }
}
