
import 'package:flutter/material.dart';

import '../../../../core/resources/appStrings.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';

class custombuttonquiz extends StatelessWidget {
  const custombuttonquiz({

    super.key,required this.onPressed,
  });
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
      height: 70,child:
      Container(


          width: double.infinity,
          height: 70,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.mangoYellow,
          ),



          child: Text(Strings.startquiz,style: AppTextStyles.bodyLarge,textAlign: TextAlign.center,)),
    );
  }
}