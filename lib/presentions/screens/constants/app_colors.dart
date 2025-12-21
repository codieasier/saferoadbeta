import 'package:flutter/material.dart';

class AppColors {
  // الألوان الرئيسية
  static const Color backgroundScaffold=Color(0xFF26396B); // اللون الأزرق الداكن للخلفية
  static const Color darkBlue = Color(0xFF1E293B); // لون البطاقات
  static const Color mangoYellow = Color(0xFFFBBF24); // اللون الأصفر الكهرماني
  static const Color lightGrey = Color(0xFFCBD5E1); // لون داخلي خفيف

  // التدرج اللوني للخلفية (مطابق تقريباً لـ SignIn/SignUp)
  static const Color gradientStart = Color(0xFF0F172B);
  static const Color gradientMiddle = Color(0xFF1E293B);
  static const Color gradientEnd = Color(0xFF334155);

  // لون شريط التقدم الدائري
  static const Color progressBackground = Color(0xFF334155);
  static const Color progressForeground = Colors.white;
  static const Color progressText = Colors.white;

  static const gradient= BoxDecoration( gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
   Color(0xFF334155),
   Color(0xFF334155),
   Color(0xFF506685),
   Color(0xFF6A7B94)
  ]
  ));
}