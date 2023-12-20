

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../theme/colors.dart';
import '../../theme/const_sizing.dart';
import '../../theme/text_theme.dart';
import '../../utils/assets.dart';

Widget drawerItem(Color backgroundColor,String svgIcon,String title,Function() onCLick){
  return GestureDetector(
    onTap: (){ onCLick();},
    child: Padding(
      padding:  EdgeInsets.all(16.r),
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(15.r)
          //more than 50% of width makes circle
        ),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Row(
            children: [
              Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  color: drawerItemColor,
                  child: Padding(
                    padding: EdgeInsets.all(8.r),
                    child: SvgPicture.asset(
                      svgIcon,
                      height: 30.h,
                      width: 30.w,
                    ),
                  )),
              width(20),
              text_18_400(title)
            ],
          ),
        ),
      ),
    ),
  );
}