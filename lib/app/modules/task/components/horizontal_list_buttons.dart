import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/components/button_with_two_states.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';

Widget horizontalListButtons( TaskController controller){
  return ListView.builder(
      itemCount: controller.horizontalButtonList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        // Buttons b = controller.horizontalButtonList[index];
        return Obx(() => buttonWithTwoStates(controller.horizontalButtonList[index].isSelected, controller.horizontalButtonList[index].name, () => controller.changeItems(index),));
      },);
}

