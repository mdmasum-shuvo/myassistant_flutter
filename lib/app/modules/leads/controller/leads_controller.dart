import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../task/components/buttons.dart';

class LeadsController extends GetxController{

  var horizontalButtonList = <Buttons>[
    Buttons(name: "All", isSelected: true.obs),
    Buttons(name: "New", isSelected: false.obs),
    Buttons(name: "Confirmed", isSelected: false.obs),
    Buttons(name: "Inactive", isSelected: false.obs),
  ].obs;
  RxBool isVisibleCalender = true.obs;

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
  }
}