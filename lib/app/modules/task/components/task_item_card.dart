import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:my_assistant/app/global/three_dot_vert.dart';
import 'package:my_assistant/app/modules/task/components/show_pop_up_menu.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../theme/Colors.dart';
import '../../../theme/text_theme.dart';
import '../../../utils/assets.dart';

Widget taskItemCard(BuildContext context, VoidCallback onTap){
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Stack(
        children: [
          Card(
            color: primaryColor,
            margin: EdgeInsets.only(bottom: 19.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: text_22_500_inter("Social App Design")),
                      threeDotVert(context, (v) => debugPrint(v))
                    ],
                  ),
                  height25(15),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: const Color(0x1AFFFFFF),
                          child: text_16_500_inter("A"),
                        ),
                        Gap(20.w),
                        Expanded(child: text_18_500_inter("Aaron Mitchell")),
                      ],
                    ),
                  ),
                  height25(15),
                    iconTextButton(Assets.call, "call", () { }),

                  height25(15),
                  text_14_400_inter("Reminder", const Color(0xB2FFFFFF)),
                  height25(15),
                  iconTextButton(Assets.date, "Tomorrow, 09:000", () { }),
                  height25(15),
                  iconTextButton(Assets.edit, "Details", () { }),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            right: 10,
            child: Card(
              color: red,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(53.r)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                child: text_18_400_inter("Pending", white),
              ),
            ),
          )
        ],
      ),
    ),
  );
}



Widget iconTextButton(String svg, String title, VoidCallback onTap){
  return InkWell(
    onTap: onTap,
    child: Row(
      children: [
        SvgPicture.asset(svg, height: 16.h, width: 16.w, fit: BoxFit.fill,),
        Gap(15.w),
        text_14_400_inter(title),
      ],
    ),
  );
}