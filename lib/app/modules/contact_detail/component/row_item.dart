import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/modules/contact_detail/controllers/contact_detail_controller.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../../global/communication.dart';

Widget rowItem(String svg, String title, ContactDetailController controller){
  return Expanded(
    child: GestureDetector(
      onTap: () async{
    if (title == "WhatsApp") {
      await launchWhatsApp(controller.contactDetail.value?.whatsapp);
    } else if (title == "Email") {
      await launchEmail(controller.contactDetail.value?.email);
    } else if (title == "Call") {
      await initiateCall(controller.contactDetail.value?.phoneNumber);
    }},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r)
        ),
        color: primaryColor,
        surfaceTintColor: primaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:11.h),
          child: Column(
            children: [
              SvgPicture.asset(svg, height: 20.h, width: 20.w,),
              height25(10),
              text_16_500_inter(title),
            ],
          ),
        ),
      ),
    ),
  );
}