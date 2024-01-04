import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/register/components/header.dart';
import 'package:my_assistant/app/modules/register/components/register_fields.dart';
import 'package:my_assistant/app/modules/register/controller/register_controller.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import '../components/footer_login.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppbar(),
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              height25(47),
              registerFields(controller, context),
              height25(20),
              footerLogin()
            ],
          ),
        ),
      ),
    );
  }
}
