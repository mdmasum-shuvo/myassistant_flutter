import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task_detail/components/task_description.dart';
import 'package:my_assistant/app/modules/task_detail/components/task_header.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/custom_appbar.dart';

import '../controllers/task_detail_controller.dart';

class TaskDetailView extends GetView<TaskDetailController> {
  const TaskDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondaryAppBar(context, "Task Detail", (v) => debugPrint(v)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 29.0.w),
        child: Column(
          children: [
            height25(43),
            taskHeader(),
            height25(40),
            taskDescription(controller.taskDetailController),
          ],
        ),
      )
    );
  }
}
