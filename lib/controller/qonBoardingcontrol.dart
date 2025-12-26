import 'package:flutter/material.dart';

import '../presentions/screens/pages/quizpage.dart';

class QonBoardingcontrol{

  static void goToQuizHome(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context)=> const QuizPage()));

  }

}