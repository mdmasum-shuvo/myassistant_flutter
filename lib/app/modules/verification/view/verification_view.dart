import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/verification/components/header.dart';
import 'package:my_assistant/app/modules/verification/components/otp_text_fields.dart';
import 'package:my_assistant/app/modules/verification/controller/verification_controller.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: primaryButton("Submit", () {
          var v = controller.otpFormKey.value.currentState!.validate();
          if(v){
            Get.toNamed(Routes.RESETPASSWORD);
          }else{

          }
        },textBlack,white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          children: [
            Flexible(flex: 1, child: header("aqib.example.com"),),
            Flexible(flex: 3,child: otpTextFields(controller)),
          ],
        ),
      ),
    );
  }
}
