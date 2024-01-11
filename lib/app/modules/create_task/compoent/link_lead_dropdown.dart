import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/lead/lead_list_model.dart';
import 'package:my_assistant/app/modules/create_task/controllers/create_task_controller.dart';

import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';




Future<void> showLinkLeadPopUp(BuildContext context, Offset position, CreateTaskController controller) async{

  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect positions = RelativeRect.fromRect(
    Rect.fromPoints(position, position), // Use the tap position as the menu position
    Offset.zero & overlay.size,
  );

  return await showMenu<Lead>(
    context: context,
    position: positions,
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    items: controller.leadController?.value.leadList.map((e) => PopupMenuItem<Lead>(
      value: e,
      child: text_18_500_inter("${e.firstName ?? ""} ${e.lastName ?? ""}"),
    )).toList() ?? [],
  ).then((Lead? value) {
    if (value != null) {
      controller.selectedLead = value.obs;
      debugPrint(controller.selectedLead?.value.firstName);

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