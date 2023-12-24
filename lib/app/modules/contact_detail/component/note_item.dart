import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget noteItem(String title, String buttonText, VoidCallback onTap){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_22_500_inter(title),
      height25(20),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r)
        ),
        color: primaryColor,
        child: Padding(padding: EdgeInsets.symmetric(vertical: 32.h),
        child: Center(child: InkWell(onTap: onTap, child: text_20_300_inter(buttonText)),),
        ),
      ),
      height25(40),
    ],
  );
}