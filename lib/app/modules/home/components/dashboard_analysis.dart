import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/modules/home/components/custom_row_text.dart';
import 'package:my_assistant/app/modules/home/components/dashboard_analysis_card.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../utils/assets.dart';

Widget dashboardAnalysis(){
  return Column(
    children: [
      customRowText("Dashboard Analysis", "", () { }),
      height25(30),
      Row(
        children: [
          Expanded(child: dashAnalysisCard("Total Leads", "12", Assets.totalLeads)),
          Expanded(child: dashAnalysisCard("Completed Tasks", "24", Assets.completedTask)),

        ],
      ),
      Row(
        children: [
          Expanded(child: dashAnalysisCard("New Leads", "9", Assets.newLeads)),
          Expanded(child: dashAnalysisCard("Goal Progress", "15", Assets.goalProgress)),

        ],
      ),
      // GridView(
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //     mainAxisSpacing: 20.h,
      //     crossAxisSpacing: 20.w,
      // ),
      // children: [
      //
      //
      // ],
      // ),
    ],
  );
}