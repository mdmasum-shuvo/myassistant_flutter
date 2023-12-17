import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/verification/components/otp_text_fields.dart';
import 'package:my_assistant/app/modules/verification/controller/verification_controller.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../common/header.dart';

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
            header("Verify email","A 4 digit code sent to aqib.example.com enter code to continue"),
            height25(96),
            otpTextFields(controller),
          ],
        ),
      ),
    );
  }
}
