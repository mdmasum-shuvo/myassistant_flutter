import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/create_task/compoent/task_status_model.dart';
import 'package:my_assistant/app/modules/create_task/controllers/create_task_controller.dart';

import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';




Future<void> showTaskStatusPopUp(BuildContext context, Offset position, CreateTaskController controller) async{

  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect positions = RelativeRect.fromRect(
    Rect.fromPoints(position, position), // Use the tap position as the menu position
    Offset.zero & overlay.size,
  );

  return await showMenu<TaskStatus>(
    context: context,
    position: positions,
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    items: controller.taskStatusList.map((e) => PopupMenuItem<TaskStatus>(
      value: e,
      child: text_18_500_inter(e.name),
    )).toList(),
  ).then((TaskStatus? value) {
    if (value != null) {
     controller.selectedTaskStatus.value = value;
     debugPrint(controller.selectedTaskStatus.value.name);

    }
  });
}

void showTaskStatusPopupDialog() {
  Get.defaultDialog(
    title: '',
    titleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    content: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'This is a beautiful custom popup dialog created with GetX.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Close the dialog when the button is pressed
              Get.back();
            },
            child: Text('Close'),
          ),
        ],
      ),
    ),
    radius: 10.0,
    middleTextStyle: TextStyle(fontSize: 18),
  );
}