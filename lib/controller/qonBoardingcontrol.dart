import 'package:flutter/material.dart';
import 'package:saferoadbeta/presentions/screens/quiz/quiz_screen.dart';


class QonBoardingcontrol{

  static void goToQuizHome(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context)=> const QuizScreen()));

  }

}