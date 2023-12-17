import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../theme/textfield.dart';
import '../../../utils/assets.dart';
import '../controller/reset_password_controller.dart';

Widget reseatPasswordFields(ResetPasswordController controller){
  return Obx(() => ListView(
    children: [
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
        ),
      ),
      height25(),
      textField("Confirm Password", controller.confirmPasswordController, Assets.lock,
        keyboardType: TextInputType.visiblePassword,
        obscureText: controller.showConfirmPassword.value,
        suffix: Padding(
          padding:  EdgeInsets.all(15.r),
          child: GestureDetector(
            onTap: () {
              controller.showConfirmPassword.value =
              !controller.showConfirmPassword.value;
              debugPrint("obscure: ${controller.showConfirmPassword.value}");
            },
            child: SvgPicture.asset(controller.showConfirmPassword.value
                ? Assets.visibilityOff
                : Assets.visibilityOff),
          ),
        ),
      ),
    ],
  ));
}