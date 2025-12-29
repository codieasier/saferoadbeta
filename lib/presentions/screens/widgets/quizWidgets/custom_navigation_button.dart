import 'package:flutter/material.dart';
import 'package:saferoadbeta/core/resources/appStrings.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({super.key,
    required this.onPressed,
    required this.isActiveOutputStream, required this.text,
  });

final VoidCallback onPressed;
final Stream<bool> isActiveOutputStream;
final String text;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: isActiveOutputStream,
        builder: (context,snapshot)=> MaterialButton(
          height: 10,
            minWidth: 20,
            onPressed: snapshot.data==null?
        null :
        snapshot.data==true?
             onPressed
            : null,
            child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
    color: snapshot.data==null?
    AppColors.unActive :
    snapshot.data==true?
    AppColors.mangoYellow : AppColors.unActive,
    ),
    alignment: Alignment.center,
    margin: EdgeInsets.all(20),
    width: double.infinity,
    height: 70,
    child:  Text(text
    ,
    style: TextStyle(
    color: AppColors.white,
    fontSize: 21,
    ),
    ))));
  }
}
