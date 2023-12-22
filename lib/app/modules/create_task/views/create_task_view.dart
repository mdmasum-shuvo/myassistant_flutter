import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/custom_appbar.dart';
import '../../common/dropdown.dart';
import '../../common/tetfield_with_title.dart';
import '../compoent/reminder.dart';
import '../controllers/create_task_controller.dart';

class CreateTaskView extends GetView<CreateTaskController> {
  const CreateTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: secondaryAppBar(context, "Create Task", (v) => debugPrint(v)),
        body: Padding(
          padding: EdgeInsets.all(24.r),
          child: SingleChildScrollView(
            child: Column(
              children: [
                dropdownField(controller.text, "Activity Type", "Call",
                    Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Assign Task to",
                    "Albert Flores", Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Link Lead", "Albert Flores",
                    Icons.keyboard_arrow_down_outlined),
                height25(20),
                textfieldWithTitle(
                    controller.textController, "Task Title", "Task Title"),
                height25(20),
                textfieldWithTitle(controller.textController, "Description",
                    "Write description here",
                    isExpandText: true),
                height25(20),
                dropdownField(controller.text, "Status", "Confirmed",
                    Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Due Date", "Add Due Date",
                    Icons.add_outlined),
                height25(20),
                reminderField(),
                height25(100),
                primaryButton("Change Password", () => null, textBlack, white),
              ],
            ),
          ),
        ));
  }
}
