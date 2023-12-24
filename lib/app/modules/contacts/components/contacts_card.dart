import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/routes/app_pages.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget contactsCard(String title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      text_22_500_inter(title),
      height25(30),
      ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Get.toNamed(Routes.CONTACT_DETAIL, arguments: title),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: primaryColor,
                  child: text_16_500_inter(title),
                ),
                Gap(20.w),
                Expanded(child: text_18_500_inter("Aaron Mitchell")),
              ],
            ),
          ),
        );
      },),
      height25(30),
      const Divider(color: Colors.white,),
      height25(10)
    ],
  );
}