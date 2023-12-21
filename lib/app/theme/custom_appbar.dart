import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/global/three_dot_vert.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_assistant/app/utils/assets.dart';

import 'Colors.dart';

AppBar mainAppBar(String title, String subTitle,
    [bool isHome = false, bool isCalender = false,Function()? onCalenderClick]) {
  return AppBar(
    // Set this height
    systemOverlayStyle: SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: primaryColor,

      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.light, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    elevation: 0,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(30.r),
    )),
    backgroundColor: primaryColor,
    leading: Builder(
        builder: (context) => Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 12.h),
              child: isHome
                  ? GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset(Assets.menuDrawer))
                  : IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: white,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
            )),
    flexibleSpace: SafeArea(
      child: isHome ? isHomeAppBar(title, subTitle) : isNotHomeAppBar(title,isCalender,(){onCalenderClick!();}),
    ),
  );
}

Widget isHomeAppBar(String title, String subTitle) {
  return Stack(
    alignment: Alignment.centerLeft,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 80.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_14_400(title, Colors.white),
            text_20_500_inter(subTitle, Colors.white)
          ],
        ),
      ),
    ],
  );
}

Widget isNotHomeAppBar(String title,bool isCalender,Function() onCalClick) {
  return Padding(
    padding:  EdgeInsets.only(top:8),
    child: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text_20_500_inter(title),
          ],
        ),
        isCalender?
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: (){onCalClick();},
            child: Padding(
              padding:  EdgeInsets.only(right: 24.w),
              child: SvgPicture.asset(
                Assets.dateWhite,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ):Container()
      ],
    ),
  );
}

AppBar secondaryAppBar(BuildContext context, String title, Function(String) onTap){
  return AppBar(
    // Set this height
    systemOverlayStyle: SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: primaryDarkColor,

      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.light, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    elevation: 0,
    backgroundColor: primaryDarkColor,
    title: text_26_500_inter(title),
    centerTitle: true,
    actions: [
      CircleAvatar(
        backgroundColor: primaryColor,
        child: threeDotVert(context, onTap),
      )
    ],
  );
}