import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/Colors.dart';

AppBar authAppbar([bool visibleLeading = true]) {
  return AppBar(
    backgroundColor: primaryDarkColor,
    elevation: 0,
    leading: visibleLeading
        ? IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: white,
            ))
        : null,
  );
}
