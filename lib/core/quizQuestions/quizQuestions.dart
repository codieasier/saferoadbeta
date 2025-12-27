import 'dart:async';

class QuizScreenController {
  List<String> option=[
    'الاجابة','14','53'

  ];
  int groupValueindex=-1;
 late StreamController<int>streamControllergroupValueIndex;
 late Sink<int>inputDataGroupValueIndex;
 late Stream<int>outputDataGroupValueIndex;
 QuizScreenController(){
   streamControllergroupValueIndex=StreamController();
   inputDataGroupValueIndex=streamControllergroupValueIndex.sink;
   outputDataGroupValueIndex=streamControllergroupValueIndex.stream.asBroadcastStream();
   inputDataGroupValueIndex.add(groupValueindex);
}

void onTapAtItemRadio(int index){
   groupValueindex=index;
   inputDataGroupValueIndex.add(groupValueindex);

}
onDispose(){
  inputDataGroupValueIndex.close();
  streamControllergroupValueIndex.close();
}
}