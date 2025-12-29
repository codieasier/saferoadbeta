class QuestionModel{

 late String _question ;
  late List<dynamic> _listAnswers =[];
  dynamic _correctAnswer;
  QuestionModel(
      {required String question, required List<dynamic> listAnswers, required correctAnswer })
  {
    _question=question;
    _listAnswers=listAnswers;
    _correctAnswer=correctAnswer;
  }

 List<dynamic> get listAnswers => _listAnswers;

  set listAnswers(List<dynamic> value) {
    _listAnswers = value;
  }

  String get question => _question;

  set question(String value) {
    _question = value;
  }

  dynamic get correctAnswer => _correctAnswer;

  set correctAnswer(dynamic value) {
    _correctAnswer = value;
  }
}
