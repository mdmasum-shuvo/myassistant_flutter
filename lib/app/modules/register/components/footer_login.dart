import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/theme/Colors.dart';

import '../../../routes/app_pages.dart';

Widget footerLogin(){
  return  RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "Already have account? ",
          style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: greyText
          ),
          children: [
            TextSpan(
              text: "Login",
              style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: white),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routes.LOGIN);

                },
            )
          ]));
}