import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/forget_password/components/header.dart';
import 'package:my_assistant/app/modules/forget_password/controller/forget_password_controller.dart';
import 'package:my_assistant/app/routes/app_pages.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/textfield.dart';
import '../../../utils/assets.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: primaryButton("Send", () {
          controller.sendOtp();
        },textBlack,white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        padding: EdgeInsets.all(24.r),
        children: [
          header(),
          height25(143),
          textField("Email", controller.emailController, Assets.email, keyboardType: TextInputType.emailAddress),

        ],
      ),
    );
  }
}
