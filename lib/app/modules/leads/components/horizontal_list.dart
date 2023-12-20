import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';
import 'package:my_assistant/app/modules/task/components/button_with_two_states.dart';

Widget horizontalListButtons( LeadsController controller){
  return ListView.builder(
    itemCount: controller.horizontalButtonList.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      // Buttons b = controller.horizontalButtonList[index];
      return Obx(() => buttonWithTwoStates(controller.horizontalButtonList[index].isSelected.value, controller.horizontalButtonList[index].name, () => controller.changeItems(index),));
    },);
}