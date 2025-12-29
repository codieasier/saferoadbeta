class QuestionModel{

 late String _question ;
 late List<dynamic> _listanswers =[];
  dynamic _correctAnswer;
  QuestionModel(
      {required String question, required List<dynamic> listanswers, required correctAnswer })
  {
    _question=question;
    _listanswers=listanswers;
    _correctAnswer=correctAnswer;
  }

 List<dynamic> get listanswers => _listanswers;

  set listanswers(List<dynamic> value) {
    _listanswers = value;
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
