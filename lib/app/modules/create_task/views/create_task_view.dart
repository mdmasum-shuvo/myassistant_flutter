import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/create_task/compoent/contact_list_dropdown.dart';
import 'package:my_assistant/app/modules/create_task/compoent/link_lead_dropdown.dart';
import 'package:my_assistant/app/modules/create_task/compoent/status_dropdown.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../global/sucess_alert.dart';
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
            child: Obx(() => Column(
              children: [
                dropdownField(controller.text, "Activity Type", "Call",
                    Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.selectedContact.value.name != null ? controller.selectedContact.value.name!.obs : "".obs, "Assign Task to",
                    "Albert Flores", Icons.keyboard_arrow_down_outlined, onTapDown: (v) {
                  showContactListPopUp(context, v.globalPosition, controller).then((value) {
                    if(value != null){
                      controller.selectedContact.value = value;
                    }
                  });
                    },),
                height25(20),
                dropdownField("${controller.selectedLead.value.firstName ?? ""} ${controller.selectedLead.value.lastName ?? ""}".obs, "Link Lead", "Albert Flores",
                    Icons.keyboard_arrow_down_outlined, onTapDown: (v) {
                      showLinkLeadPopUp(context, v.globalPosition, controller).then((value) {
                        if(value != null){
                          controller.selectedLead.value = value;
                        }
                      });
                    },),
                height25(20),
                textfieldWithTitle(
                    controller.taskTitleController, controller.title.value, "Task Title"),
                height25(20),
                textfieldWithTitle(controller.taskDescriptionController, "Description",
                    "Write description here",
                    isExpandText: true),
                height25(20),
                dropdownField(controller.selectedTaskStatus.value.name.obs, "Status", "Confirmed",
                  Icons.keyboard_arrow_down_outlined, onTapDown: (v) {
                    showTaskStatusPopUp(context, v.globalPosition, controller);
                  },),
                height25(20),
                dropdownField(controller.text, "Due Date", "Add Due Date",
                    Icons.add_outlined),
                height25(20),
                reminderField(),
                height25(100),
                primaryButton("Save",
                        () {
                          controller.create(context);
                        }, textBlack, white),
              ],
            )),
          ),
        ));
  }
}
