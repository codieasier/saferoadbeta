// في ملف lib/widgets/circular_progress_bar.dart

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress; // القيمة من 0.0 إلى 1.0
  final double size; // القطر الكلي المطلوب
  final double strokeWidth;

  const CircularProgressBar({
    super.key,
    required this.progress,
    required this.size,
    required this.strokeWidth,
  });


  @override
  Widget build(BuildContext context) {
    int percentage = (progress * 100).round();

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [

          SizedBox(
            width: size, // القطر
            height: size, // القطر
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: strokeWidth,
              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.progressForeground),
              backgroundColor: AppColors.progressBackground,
            ),
          ),

          // النص في المنتصف (النسبة المئوية)
          Text(
            '$percentage%',
            style: AppTextStyles.progressNumber.copyWith(
              fontSize: size * 0.25,
            ),
          ),
        ],
      ),
    );
  }
}