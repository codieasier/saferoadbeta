import 'package:flutter/material.dart';
import 'package:saferoadbeta/presentions/screens/pages/homePage.dart';
import 'package:saferoadbeta/presentions/screens/pages/onBoarding.dart';
import 'package:saferoadbeta/presentions/screens/pages/quizOnBoarding.dart';
import 'package:saferoadbeta/presentions/screens/pages/signIn.dart';
import 'package:saferoadbeta/presentions/screens/pages/signUp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Quizonboarding(),
      );

  }
}
