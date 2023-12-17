import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';

import '../../../theme/custom_appbar.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar("Task","",false),

        body: Center(child: Text("Working"),)
    );
  }
}
