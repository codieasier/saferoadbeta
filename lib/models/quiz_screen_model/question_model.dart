import 'package:saferoadbeta/presentions/screens/widgets/quizWidgets/custom_question.dart';

class QuestionModel{

 late CustomQuestionTitle _question ;
  late List<dynamic> _listAnswers =[];
  dynamic _correctAnswer;
  QuestionModel(
      {required CustomQuestionTitle question, required List<dynamic> listAnswers, required correctAnswer })
  {
    _question=question;
    _listAnswers=listAnswers;
    _correctAnswer=correctAnswer;
  }

 List<dynamic> get listAnswers => _listAnswers;

  set listAnswers(List<dynamic> value) {
    _listAnswers = value;
  }

  CustomQuestionTitle get question => _question;

  set question(CustomQuestionTitle value) {
    _question = value;
  }

  dynamic get correctAnswer => _correctAnswer;

  set correctAnswer(dynamic value) {
    _correctAnswer = value;
  }
}
