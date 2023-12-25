import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../routes/app_pages.dart';
import '../../../../theme/Colors.dart';
import '../../../../theme/const_sizing.dart';
import '../../../../theme/text_theme.dart';

Widget dialerItem(String title) {
  return InkWell(
    onTap: () => Get.toNamed(Routes.CONTACT_DETAIL, arguments: title),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: primaryColor,
            child: text_16_500_inter(title),
          ),
          Gap(20.w),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text_16_400_inter("Aaron Mitchell", greyText),
              text_18_400_inter("+9 534 657 235")
            ],
          )),
        ],
      ),
    ),
  );
}
