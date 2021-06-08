import 'package:ekhtebar_app/questions.dart';

class AppPrint {
  int _questionsNumber = 0;
  List<Questions> _questionGroup = [
    Questions(
      q: ' عدد ألكواكب فى ألمجموعة ألشمسية هو ثمانية كواكب',
      i: 'images/image-1.jpg',
      a: true,
    ),
    Questions(
      q: 'ألقطط من الحيوانات أللاحمة',
      i: 'images/image-2.jpg',
      a: true,
    ),
    Questions(
      q: 'ألصين موجودة فى القارة الفريقية',
      i: 'images/image-3.jpg',
      a: false,
    ),
    Questions(
      q: 'ألارض مسطحة وليست كروية',
      i: 'images/image-4.jpg',
      a: false,
    ),
  ];

  void nextQuestion() {
    if (_questionsNumber < _questionGroup.length - 1) {
      _questionsNumber++;
    }
  }

  String getQuestionImage() {
    return _questionGroup[_questionsNumber].questionImage;
  }

  String getQuestiontext() {
    return _questionGroup[_questionsNumber].questiontxt;
  }

  bool getQuestionAnswor() {
    return _questionGroup[_questionsNumber].questionanswer;
  }

  bool isFinsh() {
    if (_questionsNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionsNumber = 0;
  }
}
