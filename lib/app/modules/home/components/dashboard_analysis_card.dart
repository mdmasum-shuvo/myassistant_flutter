import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget dashAnalysisCard(String title, String total, String svgIcon){
  return Card(
    color: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.r)
    ),
    child: Padding(padding: EdgeInsets.only(left:16.w,top: 16.h,bottom: 16.h),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(svgIcon, height: 50.h, width: 50.w, fit: BoxFit.fill,),
            height25(10),
            text_18_500_inter(title,white,TextAlign.start),
            text_24_500_inter(total),
            height25(20)
          ],
        ),
        
        Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(Assets.upArrow, height: 45.h, width: 45.w, fit: BoxFit.fill,))

      ],
    ),
    ),
  );
}