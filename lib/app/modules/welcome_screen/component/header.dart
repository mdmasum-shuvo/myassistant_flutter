import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/button_theme.dart';
import '../../../theme/text_theme.dart';
import '../../../utils/assets.dart';

Widget header() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter("Welcome to DoorTracker"),
      text_16_400_inter(
          "Welcome to DoorTrack! Elevate your customer and member management experience.",
          const Color(0xFF5E6165)),

    ],
  );
}