import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/login/components/header.dart';
import 'package:my_assistant/app/modules/login/components/login_fields.dart';
import 'package:my_assistant/app/modules/welcome_screen/component/footer_registration.dart';
import 'package:my_assistant/app/theme/auth_appbar.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: authAppbar(),
        body: Padding(
          padding: EdgeInsets.all(24.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header(),
              height25(47),
              Expanded(child: loginFields(controller)),

              footerRegistration()
            ],
          ),
        ),);
  }
}
