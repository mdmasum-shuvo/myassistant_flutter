import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/global/status.dart';
import 'package:my_assistant/app/modules/task/components/task_item_card.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';
import 'package:my_assistant/app/routes/app_pages.dart';

import '../../../models/task/task_list_model.dart';

Widget taskItemList(BuildContext context, TaskController controller){
  return SizedBox(
    child: ListView.builder(
      itemCount: controller.filteredList.length,
      //physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        CurrentPageData data = controller.filteredList[index];
        Status status = controller.getStatus("${data.status ?? "0"}");
        return taskItemCard( context, () => Get.toNamed(Routes.TASK_DETAIL, arguments: data.id.toString()), data, status);
    },),
  );
}