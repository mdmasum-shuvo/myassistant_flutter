import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';
import '../../../utils/assets.dart';

Widget loginDecisionButton(
) {
  return Column(
    children: [
      buttonWithLeftLogo(
        Assets.email,
        "Login with email",
        () {
          Get.toNamed(Routes.LOGIN);
        },
        Colors.black,
      ),
      Gap(52.h),
      Row(
        children: [
          const Expanded(child: Divider()),
          Gap(4.w),
          text_16_500("or"),
          Gap(4.w),
          const Expanded(child: Divider()),
        ],
      ),
      Gap(50.h),
      buttonWithLeftLogo(
        Assets.google,
        "Login with google",
        () {},
        Colors.black,
      ),
      height25(),
      buttonWithLeftLogo(Assets.facebook, "Continue with Facebook", () {},
          Colors.white, const Color(0xFF1877F2)),
    ],
  );
}
