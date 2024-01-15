
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/task/lead_wise_task_model.dart';
import 'package:my_assistant/app/modules/lead_detail/component/timeline_card.dart';
import 'package:my_assistant/app/modules/lead_detail/controllers/lead_detail_controller.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget timeline(LeadDetailController controller){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_24_500_inter("Upcoming"),
      height25(20),
      controller.upcomingList.isEmpty ? text_16_500("No Data!") : SizedBox(
        height: Get.height *1,
        child: ListView.builder(
          itemCount: controller.upcomingList.length,
          physics: const NeverScrollableScrollPhysics(),

          itemBuilder: (context, index) {
            LeadData d = controller.upcomingList[index];
            return timelineCard(d);
        },),
      ),
      height25(20),
      text_24_500_inter("Past"),
      height25(20),
      controller.pastList.isEmpty ? text_16_500("No Data!") : SizedBox(
        height: Get.height * 1 ,
        child: ListView.builder(
          itemCount: controller.pastList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            LeadData d = controller.pastList[index];
            return timelineCard(d);
          },),
      ),
    ],
  );
}