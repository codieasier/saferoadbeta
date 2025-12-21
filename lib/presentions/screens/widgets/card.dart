import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';


class HomeCard extends StatelessWidget {
  final Widget content;
  const HomeCard ({super.key, required this.content});
  @override
  Widget build(BuildContext context) {
    return Container(


        width: double.infinity,
        margin:EdgeInsets.all(50),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xFF1A2C57) ,
            borderRadius: BorderRadius.all(Radius.circular(30))
        ),
      child: content,




);
  }
}
