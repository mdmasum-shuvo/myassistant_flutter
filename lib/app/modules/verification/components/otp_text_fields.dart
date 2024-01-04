import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/verification/controller/verification_controller.dart';

import 'otp_text_field.dart';

Widget otpTextFields(VerificationController controller){
  return Form(
      key: controller.otpFormKey.value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpTextField(controller: controller.oneController,),
          OtpTextField(controller: controller.twoController),
          OtpTextField(controller: controller.threeController,),
          OtpTextField(unFocusTextField: true, controller: controller.fourController),
        ],
      ));
}