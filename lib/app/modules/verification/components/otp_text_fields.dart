import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/verification/controller/verification_controller.dart';

import 'otp_text_field.dart';

Widget otpTextFields(VerificationController controller){
  return Form(
      key: controller.otpFormKey.value,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpTextField(),
          OtpTextField(),
          OtpTextField(),
          OtpTextField(unFocusTextField: true,),
        ],
      ));
}