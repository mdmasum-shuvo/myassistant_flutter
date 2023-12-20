import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/components/buttons.dart';

class TaskController extends GetxController{

  var horizontalButtonList = <Buttons>[
    Buttons(name: "All", isSelected: true.obs),
    Buttons(name: "Pending", isSelected: false.obs),
    Buttons(name: "Upcoming", isSelected: false.obs),
    Buttons(name: "Completed", isSelected: false.obs),
  ].obs;

  changeItems(int index,){
    for(var i = 0; i < horizontalButtonList.length; i++){
      if(i == index){
        horizontalButtonList[i].isSelected = true.obs;
        debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");

      }else{
        horizontalButtonList[i].isSelected = false.obs;
        debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");

      }
    }
    debugPrint("");
  }
}
