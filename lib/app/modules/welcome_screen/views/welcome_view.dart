import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/routes/app_pages.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/theme/theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../../../theme/auth_appbar.dart';
import '../controllers/welcome_controller.dart';


class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: authAppbar(false),
      body: Padding(
        padding: EdgeInsets.all(24.0.r),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text_26_500_inter("Welcome to DoorTracker"),
            text_16_400_inter("Welcome to DoorTrack! Elevate your customer and member management experience.", const Color(0xFF5E6165)),
            const Spacer(),
            buttonWithLeftLogo(Assets.email, "Login with email", () {
              Get.toNamed(Routes.LOGIN);
            }, Colors.black,  ),
            Gap(52.h),
            Row(
              children: [
                const Expanded(child: Divider()),
                Gap(4.w),
                text_16_500("or"),
                Gap(4.w),
                const Expanded(child: Divider()),

              ],
            ),
            Gap(50.h),
            buttonWithLeftLogo(Assets.google, "Login with google", () {}, Colors.black,  ),
            height25(),
            buttonWithLeftLogo(Assets.facebook, "Continue with Facebook", () {}, Colors.white, const Color(0xFF1877F2) ),


            const Spacer(),
            RichText(text: TextSpan(
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
            ))
          ],
        ),
      ),
    );
  }
}
