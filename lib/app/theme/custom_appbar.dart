
import 'package:dine_n_deals/app/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Colors.dart';

AppBar mainAppBar(String title,
    [bool isSearchVisible = true, bool isHome = false]) {
  return AppBar(
    // Set this height
    elevation: 0,
    backgroundColor: primaryColor,
    leading: Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: secondaryColor,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    ),
    flexibleSpace: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text_16_700(title, Colors.white)
            ],
          ),
          if (isSearchVisible)
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child:  Row(children: [
                Spacer(),
                GestureDetector(
                  onTap: (){
                   // Get.toNamed(Routes.SEARCH_CONTACT);

                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
              ]),
            ),
        ],
      ),
    ),
  );
}