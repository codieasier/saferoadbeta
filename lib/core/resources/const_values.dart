import 'package:saferoadbeta/models/quiz_screen_model/question_model.dart';
import 'package:saferoadbeta/presentions/screens/widgets/quizWidgets/custom_question.dart';

class ConstValues{
  static List<QuestionModel> questionsList=[
    QuestionModel(question: CustomQuestionTitle(textquestion: 'ماذا تعني هذه العلامة؟', imagePath: "assets/images/trafficSigns/stop.png"),

        correctAnswer: 'توقف',
      listAnswers: ['توقف','توقف عند إشارة المرور','لا تتوقف','التوقف لركن السيارة'],),
    QuestionModel(question: CustomQuestionTitle(textquestion: 'ماذا تعني هذه العلامة؟', imagePath: "assets/images/trafficSigns/forbidden.png"),

      correctAnswer: 'توقف',
      listAnswers: ["'توقف','استمر ببطئ"],),
    QuestionModel(question: CustomQuestionTitle(textquestion: 'متى يجب تشغيل إشارات الانعطاف؟', ),

      correctAnswer: 'قبل الانعطاف بوقت كاف',
      listAnswers: ["بعد الانعطاف",
        "قبل الانعطاف بوقت كافٍ",
        "أثناء الانعطاف فقط",
        "لا داعي لها",],),
  ];
}








//1- what is.........( a b c d ) - a: correct
//2- what is..........( a b c d ) - b: correct
/*
*
*
* */