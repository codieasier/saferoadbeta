import 'dart:async';

class QuizScreenController {
  List<String> option=[
    'توقف','استمر ببطىء', 'توقف عند إشارة المرور القادمة', 'توقف لركن السيارة'

  ];
  int groupValueindex=-1;
 late StreamController<int>streamControllergroupValueIndex;
 late Sink<int>inputDataGroupValueIndex;
 late Stream<int>outputDataGroupValueIndex;
 late Sink<bool> inputDataButtonStatus;
 bool isNextActive=false;
 late StreamController<bool> streamcontrollerButtonStatus;
 late Stream<bool> isActiveOutputStream;

 QuizScreenController(){
   streamControllergroupValueIndex=StreamController();
   inputDataGroupValueIndex=streamControllergroupValueIndex.sink;
   outputDataGroupValueIndex=streamControllergroupValueIndex.stream.asBroadcastStream();
   inputDataGroupValueIndex.add(groupValueindex);
   streamcontrollerButtonStatus=StreamController();
   inputDataButtonStatus= streamcontrollerButtonStatus.sink;
   isActiveOutputStream=streamcontrollerButtonStatus.stream;
   inputDataButtonStatus.add(isNextActive);
}

void onTapAtItemRadio(int index){
   groupValueindex=index;
   inputDataGroupValueIndex.add(groupValueindex);
   if (groupValueindex!=-1) {
     isNextActive=true;
   } else {
     isNextActive=false;
   }
   inputDataButtonStatus.add(isNextActive);

}
onDispose(){
  inputDataGroupValueIndex.close();
  streamControllergroupValueIndex.close();
}
}