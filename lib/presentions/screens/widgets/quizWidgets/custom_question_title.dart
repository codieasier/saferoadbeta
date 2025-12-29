
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class CustomQuestionTitle extends StatelessWidget {
  const CustomQuestionTitle({
    super.key, required this.textquestion, required this.imagePath,
  });
final String textquestion;
final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 229,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Text(textquestion,style: AppTextStyles.question,),
          Container(
              height: 60,
              width: 60,
              child: Image.asset(imagePath))
        ],
      ),


      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow:[
            BoxShadow(
                color: AppColors.mangoYellow,
                spreadRadius: -50,

                blurRadius: 100,
                offset: Offset(0, 10)


            )
          ]

      ),
    );
  }
}
