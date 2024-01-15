
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/global/convert_date_time.dart';
import 'package:my_assistant/app/models/task/lead_wise_task_model.dart';
import 'package:my_assistant/app/modules/task/components/task_item_card.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget timelineCard(LeadData d){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.r)
    ),
    margin: EdgeInsets.only(bottom: 20.h),
    color: primaryColor,
    surfaceTintColor: primaryColor,
    child: Padding(
      padding: EdgeInsets.all(20.0.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text_18_500_inter("Meeting With Lead"),
          height25(20),
          iconTextButton(Assets.profileCircle, "${d.firstName ?? ""} ${d.lastName ?? ""}", null, greyText),
          height25(10),
          iconTextButton(Assets.dateWhite, formatDateTime(d.setRemainder), null, greyText),
          height25(10),
          iconTextButton(Assets.edit, "Scheduled meeting with Lead at client office", null, greyText),

        ],
      ),
    ),
  );
}