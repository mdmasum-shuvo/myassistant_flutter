import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/profile/components/change_pass_delete_button.dart';
import 'package:my_assistant/app/modules/profile/components/profile_header.dart';
import 'package:my_assistant/app/theme/custom_appbar.dart';

import '../components/profile_detail.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Profile", "", false, false,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        child: Column(
          children: [
            Flexible(flex: 1, child: Container()),
            Flexible(flex: 4, child: profileHeader()),
            Flexible(flex: 1, child: Container()),
            Flexible(flex: 5, child: profileDetail()),
            Flexible(flex: 3, child: Container()),
            // Flexible(flex: 1, child: ),
            const Spacer(),
            changePassDeleteAccount()

          ],
        ),
      )
    );
  }
}
