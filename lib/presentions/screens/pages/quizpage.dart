import 'package:flutter/material.dart';
import 'package:saferoadbeta/core/quizQuestions/quizQuestions.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_text_styles.dart';
import 'package:percent_indicator/percent_indicator.dart';


class QuizPage extends StatefulWidget {
  const QuizPage({super.key,});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;

  int  totalq = 10;
  int  currentq = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColors.lightGrey,

      appBar: AppBar(
        leadingWidth: 100,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [Icon(Icons.arrow_back_ios,color: Colors.white,), Text("السابق",style: AppTextStyles.bodyMed,)],),
          ),
        ),
        title: Text('السؤال $currentq من $totalq',style: AppTextStyles.bodyLarge, ),
        centerTitle: true,
        backgroundColor:AppColors.backgroundScaffold ,

      )
        ,body: Container(
      width: double.infinity,
        decoration: AppColors.gradient,
      child: Column(

        children: [
          const SizedBox(height: 70,),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.mangoYellow,
                  blurRadius: 10,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer
                )
              ],

             borderRadius: BorderRadius.circular(30),
              color: AppColors.backgroundScaffold
            ),
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: Column(
              children: [
                CircularPercentIndicator(
                  arcBackgroundColor: Colors.blueGrey,
                  arcType: ArcType.HALF,
                  backgroundColor: AppColors.gradientMiddle,
                  animation: true,
                 animationDuration: 30000,
                 circularStrokeCap: CircularStrokeCap.round,

                 radius: 60.0,
                 lineWidth: 9.0,
                 percent:1.0,
                 center:  Text("30 ثانية",style: AppTextStyles.bodyLarge,),
                 progressColor: AppColors.mangoYellow,
                                ),





              ],

            ),

          )
    


        ],

      ),

    ),
    );
  }
}
