
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../theme/Colors.dart';

Widget dropdownField(RxString text,String title, String hint,IconData asset) {
  return Card(
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.r),
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 14.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_16_300(title,greyText),
            height25(8),
            text_18_400(hint)

          ],
        ),
      ),
      Padding(
        padding:  EdgeInsets.only(right: 24.w,bottom: 14.h),
        child: IconButton(onPressed:() {}, icon: Icon(asset,color: white,size: 36,)),
      )
    ],),
  );
}