import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget rowItem(String svg, String title){
  return Expanded(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r)
      ),
      color: primaryColor,
      child: Padding(
        padding: EdgeInsets.all(11.r),
        child: Column(
          children: [
            SvgPicture.asset(svg, height: 20.h, width: 20.w,),
            height25(10),
            text_16_500_inter(title),
          ],
        ),
      ),
    ),
  );
}