import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/custom_appbar.dart';
import '../../common/dropdown.dart';
import '../../common/tetfield_with_title.dart';
import '../../create_task/compoent/reminder.dart';
import '../controllers/create_lead_controller.dart';

class CreateLeadView extends GetView<CreateLeadController> {
  const CreateLeadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: secondaryAppBar(context, "Create Lead", (v) => debugPrint(v)),
        body: Padding(
          padding: EdgeInsets.all(24.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dropdownField(controller.text, "Pick from contact",
                    "Aaron Mitchell", Icons.keyboard_arrow_down_outlined),
                height25(20),
                text_22_500_inter("Write Lead information"),
                height25(20),
                Row(
                  children: [
                    Expanded(
                      child: textfieldWithTitle(
                          controller.textController, "First Name", "Caleb"),
                    ),
                    Expanded(
                      child: textfieldWithTitle(
                          controller.textController, "Last Name", "Anderson"),
                    ),
                  ],
                ),
                height25(20),
                textfieldWithTitle(
                    controller.textController, "Mobile", "+9 123 456 789"),
                height25(20),
                textfieldWithTitle(controller.textController, "Email",
                    "calebanderson@gmail.com"),
                height25(40),
                dropdownField(controller.text, "Assign Executive",
                    "Albert Flores", Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Source", "Albert Flores",
                    Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Channel Partner",
                    "Albert Flores", Icons.keyboard_arrow_down_outlined),
                height25(20),
                dropdownField(controller.text, "Add new Project",
                    "App Development ", Icons.keyboard_arrow_down_outlined),
                height25(50),
                primaryButton("Save", () => null, textBlack, white),
              ],
            ),
          ),
        ));
  }
}
