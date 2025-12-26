
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/app_colors.dart';

class CustomCirclePercentIndicator extends StatelessWidget {
  const CustomCirclePercentIndicator({
    super.key, required this.duration
  });
  final String duration;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Colors.white,
      child: CircularPercentIndicator(

        backgroundColor: AppColors.mangoYellow.withAlpha(40),
        animation: true,
        animationDuration: 30000,
        circularStrokeCap: CircularStrokeCap.round,

        radius: 43.0,
        lineWidth: 9.0,
        percent:1.0,
        center:  Text(duration,style:
          TextStyle(color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),),
        progressColor: AppColors.mangoYellow,
      ),
    );
  }
}
