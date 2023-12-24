import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../routes/app_pages.dart';


Future<void> showMyDialog(BuildContext context, String message) async {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.rightSlide,
    title: 'Success',
    desc: message,
    btnOkOnPress: () {
      Get.offAllNamed(Routes.HOME);
    },
  ).show();
}


successDialogue(String title, String body, String buttonText, VoidCallback onTap,[bool barrierDismissible = false]){

  Get.defaultDialog(
    title: "",
    barrierDismissible: barrierDismissible,
    contentPadding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 25.h),
    backgroundColor: primaryColor,
    content: Column(
      children: [
        SvgPicture.asset(Assets.success, height: 101.h, width: 101.w,),
        height25(30),
        text_26_500_inter(title),
        text_16_400_inter(body,greyText,TextAlign.center),
        height25(59),
        primaryButton(buttonText, onTap, primaryColor, white ),
      ],
    )
  );
}

pickFileFormDialogue( [bool barrierDismissible = true]){

  Get.defaultDialog(
      title: "",
      barrierDismissible: barrierDismissible,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, ),
      backgroundColor: primaryColor,
      content: Column(
        children: [
          text_22_500_inter("File From"),

          height25(30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              rowItem(Assets.file, "Files", (){}),
              Gap(10.w),
              rowItem(Assets.drive, "Google drive", (){}),
              Gap(10.w),
              rowItem(Assets.camera, "Camera", (){}),
            ],
          )
        ],
      )
  );
}



Widget rowItem(String svg, String title, VoidCallback onTap){
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        color: drawerItemColor,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              SvgPicture.asset(svg, height: 20.h, width: 20.w,),
              height25(10),
              text_14_400_inter(title),
            ],
          ),
        ),
      ),
    ),
  );
}