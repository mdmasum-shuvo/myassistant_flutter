import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/modules/home/components/custom_row_text.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget documents(){
  return Column(
    children: [
      customRowText("Documents", "View All", () { }),
      height25(20),
      ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.only(bottom: 15.h),
          color: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r)
          ),
          child: Padding(
            padding:  EdgeInsets.all(4.r),
            child: ListTile(
              leading: SvgPicture.asset(Assets.document, height: 60.h, width: 60.w, fit: BoxFit.fill,),
              title: text_18_500_inter("Sales Presentation.pdf"),
              subtitle: text_16_400_inter("3.10 MB", const Color(0xB2FFFFFF)),
            ),
          ),
        );
      },),
    ],
  );
}