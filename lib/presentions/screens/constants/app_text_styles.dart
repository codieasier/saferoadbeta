import 'package:flutter/material.dart';


import 'app_colors.dart';

class AppTextStyles {

  static const String fontFamily = 'Tajawal';

  static const TextStyle heading1 = TextStyle(
    fontFamily: 'Tajawal',
    fontSize: 26,
    fontWeight: FontWeight.w900,
    color: Color(0xFFFBBF24),
  );


  static TextStyle heading2 = TextStyle(
    fontFamily: 'Tajawal',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.mangoYellow,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyMed = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle progressNumber = TextStyle(
    fontFamily: fontFamily,
    fontSize: 55,
    fontWeight: FontWeight.bold,
    color: AppColors.progressText,
  );

  static const TextStyle navActive = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: AppColors.mangoYellow,
  );
}