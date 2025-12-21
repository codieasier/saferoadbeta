import 'package:flutter/material.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';

class Quizonboarding extends StatelessWidget {
  const Quizonboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffold,
      body:SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/drivingTest.png",height: 400,width: 200,)

          ],
        ),
      ))


    ) ;
  }
}
