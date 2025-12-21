import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saferoadbeta/presentions/screens/pages/signIn.dart';
import 'package:saferoadbeta/presentions/screens/pages/signUp.dart';


class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF26396B)
         , body:SafeArea(child:
    Column(
     children: [
       SvgPicture.asset('assets/images/onBoarding.svg'),
       Spacer(flex: 1,),
       Text('مرحبًا بك في',style: TextStyle(fontSize: 24,color:Color(
           0xEEE1D4BB),fontFamily: 'Tajawal',fontWeight: FontWeight.bold ),)

       ,Row( mainAxisAlignment: MainAxisAlignment.center,

      children:[SvgPicture.asset('assets/images/LightningVector.svg'),Text('SafeRoad', style: TextStyle(fontFamily: 'MuseoModerno',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white ),)])
      , Text('نساعدك لتتعرف على مدى أمان قيادتك',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),)
       ,Spacer(flex: 2,),
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
       Container(
         height: 60,width: 180,
         padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
         decoration: BoxDecoration(boxShadow: [BoxShadow(color: Color(0xFFFBBF24).withAlpha(60), blurRadius: 30,spreadRadius: 5.0)],borderRadius: BorderRadius.circular(70)),
         
         child: MaterialButton(color: Color(0xFFFBBF24),

           textColor: Colors.white,
           child: Text('تسجيل الدخول',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Tajawal'),),
             onPressed: (){
               Navigator.push( context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
             },),
       )
       ,Container(
           height: 60,width: 180,
         padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
         decoration: BoxDecoration(boxShadow: [BoxShadow(color: Color(0xFFFBBF24).withAlpha(60), blurRadius: 30,spreadRadius: 5.0)],borderRadius: BorderRadius.circular(70)),

         child: MaterialButton(color: Color(0xFFFBBF24),

           textColor: Colors.white,
           child: Text(' إنشاء حساب جديد',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Tajawal'),),
           onPressed: (){
           Navigator.push( context, MaterialPageRoute(builder: (context)=> const SignInpage()));
           },),
       )
     ],
     )
     ,  Spacer(flex: 1,)
     ],

       
    )) ,

    );
  }
}
