import 'package:flutter/material.dart';
import 'package:saferoadbeta/controller/qonBoardingcontrol.dart';
import 'package:saferoadbeta/core/resources/appStrings.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_text_styles.dart';
import 'package:saferoadbeta/presentions/screens/quiz/quiz_screen.dart';



import '../widgets/quizWidgets/custombuttonQuiz.dart';

class Quizonboarding extends StatelessWidget {
  const Quizonboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffold,
      body:SafeArea(child: Container(
       margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,


          children: [

            Text('لنقم باختبار معلوماتك حول المرور والقيادة',style: AppTextStyles.heading1,textAlign: TextAlign.center,),
            Image.asset("assets/images/drivingTest.png",height: 400,width: 200,),
            SizedBox(height: 10,),
            custombuttonquiz(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> const QuizScreen()));


            }

            )

          ],
        ),
      ))


    ) ;
  }
}

