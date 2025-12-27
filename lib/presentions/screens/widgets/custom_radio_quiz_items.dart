

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_text_styles.dart';

import '../constants/app_colors.dart';

class Custom_radio_quiz extends StatelessWidget {
  const Custom_radio_quiz({
    super.key, required this.option, required this.onTap,
    this.isSelected=false
  });
  final String option;
  final GestureTapCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3,horizontal: 30),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
      
        ),
        child:Row(
      
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(option,style: AppTextStyles.question,),
            isSelected==true?  const Icon(CupertinoIcons.check_mark_circled_solid,color: AppColors.backgroundScaffold,)
            : Container(
              width: 20,
              height: 20,
              decoration:ShapeDecoration(
                  shape:CircleBorder(
                      side: BorderSide(color: AppColors.backgroundScaffold,
                          width: 1)
                  ),
                  color: AppColors.white),
            ),





          ],
        ),
      ),
    );
  }
}
