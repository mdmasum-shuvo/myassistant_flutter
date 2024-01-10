import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/global/status.dart';
import 'package:my_assistant/app/models/lead/lead_list_model.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';
import 'package:my_assistant/app/routes/app_pages.dart';

import '../../../theme/Colors.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';

Widget leadItemCard(LeadsController controller, Lead data, Status status, int index){
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.LEAD_DETAIL, arguments: data.id.toString());
    },
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Stack(
        children: [
          Card(
            color: primaryColor,
            surfaceTintColor: primaryColor,
            margin: EdgeInsets.only(bottom: 19.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: double.infinity,),
                  height25(15),
                  text_14_400_inter(data.projectName ?? "", const Color(0xB2FFFFFF)),
                  height25(15),
                  text_18_400_inter("${data.firstName ?? ""} ${data.lastName ?? ""}",white),
                  height25(15),
                  text_16_400_inter("Website", const Color(0xB2FFFFFF)),
                  height25(15),

                ],
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            right: 10,
            child: Card(
              color: status.color,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53.r)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                child: text_18_400_inter(status.name, white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}