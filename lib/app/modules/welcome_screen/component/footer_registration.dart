import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/theme/colors.dart';

import '../../../routes/app_pages.dart';

Widget footerRegistration() {
  return RichText(text: TextSpan(
      text: "Don’t have an account? ",
      style: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: greyText
      ),
      children: [
        TextSpan(
          text: "Register",
          style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Get.toNamed(Routes.REGISTER);
            },
        )
      ]
  ));
}