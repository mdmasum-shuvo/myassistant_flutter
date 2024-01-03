import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/components/task_item_card.dart';
import 'package:my_assistant/app/routes/app_pages.dart';

Widget taskItemList(BuildContext context,){
  return SizedBox(
    child: ListView.builder(
      itemCount: 5,
      //physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return taskItemCard( context, () => Get.toNamed(Routes.TASK_DETAIL),);
    },),
  );
}