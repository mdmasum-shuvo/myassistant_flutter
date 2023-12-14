import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/register/controller/register_controller.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/text_theme.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      body: ListView(
        padding: EdgeInsets.all(24.r),
        children: [
          text_26_500_inter("Welcome to DoorTracker"),
          text_16_400_inter("Let’s get started. Share your info to join the marketplace", const Color(0xFF5E6165)),
          height25(47),
          textField("First Name", controller.firstNameController, Assets.person, keyboardType: TextInputType.name),
          height25(),
          textField("Last Name", controller.lastNameController, Assets.person, keyboardType: TextInputType.name),
          height25(),
          textField("Email", controller.emailController, Assets.email, keyboardType: TextInputType.name),
          height25(),
          dateField("Date", "".obs, (){}),
          height25(),
          textField("Password", controller.passwordController, Assets.lock,
              keyboardType: TextInputType.visiblePassword,
              obscureText: controller.showPassword.value,
              suffix: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    controller.showPassword.value =
                    !controller.showPassword.value;
                    debugPrint("obscure: ${controller.showPassword.value}");
                  },
                  child: SvgPicture.asset(controller.showPassword.value
                      ? Assets.visibilityOff
                      : Assets.visibilityOff),
                ),
              )),
          height25(),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {

              },),
              Gap(6.w),
              Expanded(
                child: RichText(text: TextSpan(
                  text: "By signing up, you’re agree to our ",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: secondaryColor1
                  ),
                  children: [
                    TextSpan(
                      text: "Term of Service ",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.toNamed(Routes.REGISTER);

                          print("Terms tapped");
                        },
                    ),
                    TextSpan(
                        text: "and ",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor1
                      ),
                    ),
                    TextSpan(
                        text: "Privacy Policy",
                      style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: secondaryColor
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Get.toNamed(Routes.REGISTER);

                          print("Privacy tapped");
                        },
                    )
                  ]
                )),
              )
            ],
          ),
          height25(),
          primaryButton("Register", () {}),
          height25(),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Already have account? ",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF5E6165)),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.LOGIN);

                          print("Login tapped");
                        },
                    )
                  ]))
        ],
      ),
    );
  }
}
