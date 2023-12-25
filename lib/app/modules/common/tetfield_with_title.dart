import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../theme/Colors.dart';
import '../../theme/textfield.dart';

Widget textfieldWithTitle(
    TextEditingController controller, String title, String hint,
    {bool isExpandText = false}) {
  return Card(
    color: primaryColor,surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.r),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height25(14),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: text_16_300(title, greyText),
        ),
        textFieldNoIcon(hint, controller,
            keyboardType: TextInputType.name, isExpandText: isExpandText),
      ],
    ),
  );
}
