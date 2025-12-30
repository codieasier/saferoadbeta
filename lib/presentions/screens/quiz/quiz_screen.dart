import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:saferoadbeta/controller/quiz_controller.dart';
import 'package:saferoadbeta/core/resources/appStrings.dart';
import 'package:saferoadbeta/core/resources/const_values.dart';
import 'package:saferoadbeta/presentions/screens/widgets/quizWidgets/custom_navigation_button.dart';
import 'package:saferoadbeta/presentions/screens/widgets/quizWidgets/custom_radio_quiz_items.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

import '../widgets/quizWidgets/custom_question.dart';
import '../widgets/quizWidgets/custum_listview_options_quiz_screen.dart';
import '../widgets/quizWidgets/quiz_circleindicator.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
 final int  totalq = 10;

final  int  currentq = 7;
late QuizScreenController _quizScreenController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quizScreenController=QuizScreenController();
  }
  @override
  void onDispose(){
  _quizScreenController.onDispose();
  super.dispose();
  }
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
          child: Row(children: [Icon(Icons.arrow_back_ios,color:AppColors.white,), Text("الخروج",style: AppTextStyles.bodyMed,)],),
        ),
        ),
          title: Text((_quizScreenController.thisQuestion+1).toString()+'/'+_quizScreenController.countQuestion.toString(),style: AppTextStyles.bodyLarge, ),
          centerTitle: true,
          backgroundColor:AppColors.backgroundScaffold ,

        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               const SizedBox(height: 70,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
            
                    CustomQuestionTitle(textquestion: ConstValues.questionsList[_quizScreenController.thisQuestion].question.textquestion,
                    imagePath: ConstValues.questionsList[_quizScreenController.thisQuestion].question.imagePath,)
                    ,const  Positioned(
                      right: 0,
                        left: 0,
                        top:-40 ,
                        child: CustomCirclePercentIndicator(duration: '30',)),
            
                  ],
            
                )
                ,SizedBox(height: 70,),
                custon_Listview_options(
                  onTap: (indexValue){
                    _quizScreenController.onTapAtItemRadio(indexValue);
                  },
                  outputdataGroupValueRadio:  _quizScreenController.outputDataGroupValueIndex,
                  itemCount: ConstValues.questionsList[_quizScreenController.thisQuestion].listAnswers.length,
                  option:ConstValues.questionsList[_quizScreenController.thisQuestion].listAnswers , )

            
            
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
      CustomNavigationButton(

          onPressed: (){},
          isActiveOutputStream:_quizScreenController.isActiveOutputStream, text:StringsValues.knextquestion, ),

    );
  }
}
