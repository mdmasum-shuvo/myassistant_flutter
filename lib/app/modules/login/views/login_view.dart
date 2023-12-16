import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/welcome_screen/component/footer_registration.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/text_theme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: authAppbar(),
        body: Obx(
          () => ListView(
            padding: EdgeInsets.all(24.0.r),
            children: [
              text_26_500_inter("Login to app"),

              text_16_400_inter(
                  "Welcome to DoorTrack! Elevate your customer and member management experience.",
                  greyText),
              height25(47),
              textField(
                "Email",
                controller.emailController,
                Assets.email,
                keyboardType: TextInputType.emailAddress,
              ),
              height25(47),
              textField("Password", controller.passwordController, Assets.lock,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.showPassword.value,
                  suffix: Padding(
                    padding:  EdgeInsets.all(15.r),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: text_14_500("Forget Password?", greyText))
                ],
              ),
              height25(73),
              primaryButton("Login", () {},textBlack,white),
              height25(Get.height * 0.2),
             footerRegistration()
            ],
          ),
        ));
  }
}
