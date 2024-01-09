import 'package:flutter/material.dart';
import 'package:my_assistant/app/global/convert_date_time.dart';
import 'package:my_assistant/app/models/task/task_detail.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';
import '../../profile/components/title_and_value_row.dart';

Widget taskHeader(TaskData taskData, String status){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Align( alignment: Alignment.centerLeft,child: text_22_500_inter("Social App Design",)),
      height25(40),
      titleAndValueRow("Activity type", "${taskData.activityTypeId}"),
      titleAndValueRow("Assign Task", taskData.assignName ?? ""),
      titleAndValueRow("Task Title", taskData.taskTitile ?? ""),
      titleAndValueRow("Reminder", formatDateTime(taskData.setRemainder)),
      titleAndValueRow("Status", "Completed"),
    ],
  );
}