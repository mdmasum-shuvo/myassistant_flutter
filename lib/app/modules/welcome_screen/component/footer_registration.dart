import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_pages.dart';

Widget footerRegistration() {
  return RichText(text: TextSpan(
      text: "Don’t have an account? ",
      style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF5E6165)
      ),
      children: [
        TextSpan(
          text: "Register",
          style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Get.toNamed(Routes.REGISTER);
              print("Register tapped");
            },
        )
      ]
  ));
}