import 'package:flutter/material.dart';
import 'package:saferoadbeta/presentions/screens/constants/app_colors.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:
      AppBar(leading: IconButton( icon: Icon(Icons.arrow_back,color: Colors.grey,),onPressed: (){
        Navigator.pop(context);
      },),backgroundColor: AppColors.backgroundScaffold,),

      backgroundColor: AppColors.backgroundScaffold,
    );
  }
}
