
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class CustomQuestionTitle extends StatelessWidget {
  const CustomQuestionTitle({
    super.key, required this.textquestion,
  });
final String textquestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 229,
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: Text(textquestion,style: AppTextStyles.question,),


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
