import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget verticalItem(String svg, String title, String sub ){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.r),
    ),
    color: primaryColor,
    child: Padding(
      padding: EdgeInsets.all(15.0.r),
      child: ListTile(
        leading: SvgPicture.asset(svg, height: 60.h, width: 60.w,),
        title: text_16_300_inter(title),
        subtitle: text_18_500_inter(sub),
      ),
    ),
  );
}