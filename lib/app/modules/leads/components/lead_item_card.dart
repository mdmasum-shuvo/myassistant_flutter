import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/Colors.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';

Widget leadItemCard(){
  return Padding(
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
                const SizedBox(width: double.infinity,),
                height25(15),
                text_14_400_inter("lead 1", const Color(0xB2FFFFFF)),
                height25(15),
                text_18_400_inter("Caleb Anderson",white),
                height25(15),
                text_16_400_inter("Website", const Color(0xB2FFFFFF)),
                height25(15),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 10,
          child: Card(
            color: Colors.green,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(53.r)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
              child: text_18_400_inter("Confirmed", white),
            ),
          ),
        )
      ],
    ),
  );
}