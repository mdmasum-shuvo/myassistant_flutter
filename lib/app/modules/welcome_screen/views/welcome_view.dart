import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/welcome_screen/component/footer_registration.dart';
import 'package:my_assistant/app/modules/welcome_screen/component/header.dart';
import 'package:my_assistant/app/modules/welcome_screen/component/login_decesion_button.dart';

import '../../../theme/auth_appbar.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.r),
          child: Column(
            children: [
              Flexible(flex:1,child: Container()),
              Flexible(flex: 3, child: header()),
              Flexible(flex: 10, child: loginDecisionButton()),
              Flexible(flex: 1, child: footerRegistration())
            ],
          ),
        ),
      ),
    );
  }
}
