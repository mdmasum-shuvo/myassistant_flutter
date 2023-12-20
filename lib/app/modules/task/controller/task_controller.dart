import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/components/buttons.dart';

class TaskController extends GetxController{

  var horizontalButtonList = <Buttons>[
    Buttons(name: "All", isSelected: true),
    Buttons(name: "Pending", isSelected: false),
    Buttons(name: "Upcoming", isSelected: false),
    Buttons(name: "Completed", isSelected: false),
  ].obs;

  changeItems(int index,){
    for(var i = 0; i < horizontalButtonList.length; i++){
      if(i == index){
        horizontalButtonList[i].isSelected = true;
      }else{
        horizontalButtonList[i].isSelected = false;
      }
    }
  }
}
