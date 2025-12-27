
import 'package:flutter/material.dart';

import '../../../core/quizQuestions/quizQuestions.dart';
import 'custom_radio_quiz_items.dart';

class custon_Listview_options extends StatelessWidget {
  const custon_Listview_options({
    super.key,
     required this.itemCount,
  }) ;


final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:(context,index)=>Custom_radio_quiz() ,
        separatorBuilder: (context,index)=>SizedBox(height: 25,) ,
        itemCount: itemCount);
  }
}
