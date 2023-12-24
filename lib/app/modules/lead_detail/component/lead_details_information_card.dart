
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_assistant/app/modules/lead_detail/controllers/lead_detail_controller.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../common/dropdown.dart';
import '../../common/tetfield_with_title.dart';

Widget leadDetailInformationCard(LeadDetailController controller){
  return SingleChildScrollView(
    child: Column(
      children: [
        Align(alignment: Alignment.centerLeft, child: text_22_500_inter("Lead Information")),
        height25(20),
        Row(
          children: [
            Expanded(child: textfieldWithTitle(controller.firstNameController, "First Name", "Calleb")),
            Gap(20.w),
            Expanded(child: textfieldWithTitle(controller.lastNameController, "Last Name", "Anderson")),
          ],
        ),
        height25(20),
        textfieldWithTitle(controller.mobileController, "Mobile", "+9 123 456 789"),
        height25(20),
        textfieldWithTitle(controller.emailController, "Email", "calebanderson@gmail.com"),
        height25(20),
        Align(alignment: Alignment.centerLeft, child: text_22_500_inter("Lead Information")),
        height25(20),
        dropdownField(controller.salesType, "Sales Type", "Select Sales Type",
            Icons.keyboard_arrow_down_outlined),
        height25(20),
        textfieldWithTitle(controller.projectInterestController, "Project Interest", "Write Project Interest"),
        height25(20),
        textfieldWithTitle(controller.requirementController, "Requirement", "Write Requirement"),
        height25(20),
        textfieldWithTitle(controller.preferenceController, "Preference", "Write Preference"),

      ],
    ),
  );
}