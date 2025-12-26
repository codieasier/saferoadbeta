

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class Custom_radio_quiz extends StatelessWidget {
  const Custom_radio_quiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text('data'),
          Container(
            width: 20,
            height: 20,
            decoration:ShapeDecoration(
                shape:CircleBorder(
                    side: BorderSide(color: AppColors.backgroundScaffold,
                        width: 1)
                ),
                color: AppColors.white),
          )


        ],
      ),
    );
  }
}
