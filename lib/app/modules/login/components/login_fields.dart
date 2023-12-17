
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/login/controllers/login_controller.dart';
import 'package:my_assistant/app/routes/app_pages.dart';

import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';
import '../../../theme/textfield.dart';
import '../../../utils/assets.dart';

Widget loginFields(LoginController controller){
  return ListView(
    children: [
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
              onPressed: () {
                Get.toNamed(Routes.FORGETPASSWORD);
              },
              child: text_14_500("Forget Password?", greyText))
        ],
      ),
      height25(73),
      primaryButton("Login", () {},textBlack,white),
    ],
  );
}