import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_assistant/app/modules/contact_detail/controllers/contact_detail_controller.dart';

import '../../../theme/Colors.dart';
import '../../../theme/text_theme.dart';

Widget profileHeader(ContactDetailController controller){
  return Row(
    children: [
      CircleAvatar(
        backgroundColor: primaryColor,
        radius: 35.r,
        child: text_16_500_inter(controller.contactDetail.value?.name?.toUpperCase()[0]),
      ),
      Gap(30.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text_22_500_inter(controller.contactDetail.value?.name),
          text_16_300_inter(controller.contactDetail.value?.userId.toString()),
          text_16_300_inter("Date of Birth : ${controller.contactDetail.value?.dob}"),
        ],
      )
    ],
  );
}