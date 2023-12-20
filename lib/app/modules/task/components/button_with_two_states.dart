
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget buttonWithTwoStates(bool isSelected, String title, VoidCallback onTap){
  return InkWell(
    onTap: onTap,
    child: Card(
      elevation: 0,
      margin: EdgeInsets.only(right: 8.w),
      color: isSelected ? white : Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.r),
        side: BorderSide(color: isSelected ? white : primaryColor)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 0.h),
        child: Center(child: text_16_400_inter(title, isSelected ? Colors.black : white)),
      ),
    ),
  );
}