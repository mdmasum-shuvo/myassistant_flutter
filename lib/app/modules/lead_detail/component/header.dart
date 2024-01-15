
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/lead_detail/controllers/lead_detail_controller.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';

Widget leadDetailHeader(LeadDetailController controller){
  return Obx(() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_22_500_inter("${controller.leadDetail.value.firstName ?? ""} ${controller.leadDetail.value.lastName ?? ""}"),
      height25(10),
      text_16_300_inter(controller.leadDetail.value.phoneNumber ?? ""),
      text_16_300_inter(controller.leadDetail.value.pickFromContactName ?? ""),
      height25(30),
    ],
  ));
}