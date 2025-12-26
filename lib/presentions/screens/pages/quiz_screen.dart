import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:saferoadbeta/core/resources/quizQuestions.dart';
import 'package:saferoadbeta/presentions/screens/widgets/custom_radio_quiz_items.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

import '../widgets/custom_question_title.dart';
import '../widgets/quiz_circleindicator.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

 final int  totalq = 10;
final  int  currentq = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: AppColors.lightGrey,

        appBar: AppBar(
        leadingWidth: 100,
        leading: InkWell(
        onTap: (){
      Navigator.pop(context);
    },  child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [Icon(Icons.arrow_back_ios,color: Colors.white,), Text("السابق",style: AppTextStyles.bodyMed,)],),
        ),
        ),
          title: Text('السؤال $currentq من $totalq',style: AppTextStyles.bodyLarge, ),
          centerTitle: true,
          backgroundColor:AppColors.backgroundScaffold ,

        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const SizedBox(height: 70,),
              Stack(
                clipBehavior: Clip.none,
                children: [

                  CustomQuestionTitle(textquestion: 'السؤال الأول',)
                  ,const  Positioned(
                    right: 0,
                      left: 0,
                      top:-40 ,
                      child: CustomCirclePercentIndicator(duration: '30',)),

                ],

              )
              ,SizedBox(height: 70,),
              Custom_radio_quiz(),
              Custom_radio_quiz(),

              Custom_radio_quiz()

            ],
          ),
        ),
      ),
    );
  }
}
