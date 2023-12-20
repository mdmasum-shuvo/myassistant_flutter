import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/task/components/task_item_card.dart';

Widget taskItemList(BuildContext context,){
  return ListView.builder(
    itemCount: 5,
   //  physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
    return taskItemCard( context);
  },);
}