import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../theme/button_theme.dart';

void showCustomDialog(BuildContext context, {String title = "Password changed", String body = "Password has changed successfully, login to your account.", String btnName = "Login"}) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 380.h,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(40)),
          child: SizedBox.expand(child: Padding(
            padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 54.h,bottom: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SvgPicture.asset(Assets.success),
                height25(12),

                text_26_500_inter(title),

                text_16_400(body,greyText,TextAlign.center),
            height25(),
              primaryButton(btnName,
                      () => {Get.back()}, textBlack, white)
            ],),
          )),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}
