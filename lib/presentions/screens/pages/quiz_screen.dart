import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

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
              Stack(
                children: [
                  CircularPercentIndicator(


                    backgroundColor: AppColors.mangoYellow.withAlpha(40),
                    animation: true,
                    animationDuration: 30000,
                    circularStrokeCap: CircularStrokeCap.round,

                    radius: 43.0,
                    lineWidth: 9.0,
                    percent:1.0,
                    center:  Text("30",style: AppTextStyles.bodyLarge,),
                    progressColor: AppColors.mangoYellow,
                  ),

                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
