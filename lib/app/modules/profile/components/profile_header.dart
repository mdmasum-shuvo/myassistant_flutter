import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget profileHeader(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 50.r,
        backgroundColor: primaryColor,
        child: text_32_500_inter("A"),
      ),
      height25(20),
      text_24_500_inter("Aaron Mitchell"),
      text_16_400_inter("aaronmitchell@gmail.com", const Color(0xB2FFFFFF))
    ],
  );
}