import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/create_lead/component/contact_list_dropdown.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/custom_appbar.dart';
import '../../common/dropdown.dart';
import '../../common/tetfield_with_title.dart';
import '../../create_task/compoent/contact_list_dropdown.dart';
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
            child:  Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // dropdownField(controller.text, "Pick from contact",
                //     "Aaron Mitchell", Icons.keyboard_arrow_down_outlined),
                dropdownField(controller.selectedContact?.value.name != null ? controller.selectedContact!.value.name!.obs : "".obs,
                  "Pick from contact",
                  "Aaron Mitchell", Icons.keyboard_arrow_down_outlined, onTapDown: (v) {
                    showContactListForLeadPopUp(context, v.globalPosition, controller);
                  },),
                height25(20),
                // text_22_500_inter("Write Lead information"),
                text_22_500_inter(controller.title.value),
                height25(20),
                Row(
                  children: [
                    Expanded(
                      child: textfieldWithTitle(
                          controller.firstNameController, "First Name", "Caleb", keyboardType: TextInputType.name),
                    ),
                    Expanded(
                      child: textfieldWithTitle(
                          controller.lastNameController, "Last Name", "Anderson", keyboardType: TextInputType.name),
                    ),
                  ],
                ),
                height25(20),
                textfieldWithTitle(
                    controller.mobileController, "Mobile", "+9 123 456 789", keyboardType: TextInputType.number),
                height25(20),
                textfieldWithTitle(controller.emailController, "Email",
                    "calebanderson@gmail.com", keyboardType: TextInputType.emailAddress),
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
                primaryButton("Save", () {
                  controller.create(context);
                }, textBlack, white),
              ],
            )),
          ),
        ));
  }
}
