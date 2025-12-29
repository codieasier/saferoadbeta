
import 'package:flutter/material.dart';

import '../../../../controller/quiz_controller.dart';
import 'custom_radio_quiz_items.dart';

class custon_Listview_options extends StatelessWidget {
  const custon_Listview_options({
    super.key,
     required this.itemCount,

    required this.option,
    required this.outputdataGroupValueRadio, required this.onTap,
  }) ;
final List<String> option;
final int itemCount;
final Stream<int> outputdataGroupValueRadio;
final void Function(int indexValue)onTap;




  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:(context,index)=>
            StreamBuilder(
                stream: outputdataGroupValueRadio,
                builder:(context,snapshot)=>
        Custom_radio_quiz(
        onTap: (){
          onTap(index);
        },
    isSelected: snapshot.data==null? false
    :snapshot.data==index? true:false,

    option: option[index],
    ),),
        separatorBuilder: (context,index)=>SizedBox(height: 25,) ,
        itemCount: itemCount);
  }
}
