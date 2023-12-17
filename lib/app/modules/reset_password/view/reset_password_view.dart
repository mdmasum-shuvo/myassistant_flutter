import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/reset_password/controller/reset_password_controller.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/utils/success_pop_up.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../components/header.dart';
import '../components/reseat_password_fields.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: primaryButton("Update", () {
          successDialogue("Password Changed", "Password has changed successfully, login to your account.", "login", () {
            Get.offAllNamed(Routes.LOGIN);
          });
          // Get.toNamed(Routes.RESETPASSWORD);
        },textBlack,white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          children: [
            header(),
            height25(143),
            Expanded(child: reseatPasswordFields(controller)),

          ],
        ),
      ),
    );
  }
}
