import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget leadPipelineCard(String t1, String t2, ){
  return Card(
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: Padding(padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 11.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text_18_500_inter(t1),
        height25(5),
        text_16_400_inter(t2,Color(0xB2FFFFFF)),
      ],
    ),
    ),
  );
}