import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../task/components/buttons.dart';

class LeadsController extends GetxController{

  var horizontalButtonList = <Buttons>[
    Buttons(name: "All", isSelected: true),
    Buttons(name: "New", isSelected: false),
    Buttons(name: "Confirmed", isSelected: false),
    Buttons(name: "Inactive", isSelected: false),
  ].obs;

  changeItems(int index,){
    for(var i = 0; i < horizontalButtonList.length; i++){
      if(i == index){
        horizontalButtonList[i].isSelected = true;
        debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");

      }else{
        horizontalButtonList[i].isSelected = false;
        debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");

      }
    }
  }
}