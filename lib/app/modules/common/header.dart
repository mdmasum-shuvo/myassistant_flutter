import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import '../../theme/text_theme.dart';

Widget header(String title,String description) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter(title),
      height25(4),
      text_16_400_inter(
          description,
          const Color(0xFF5E6165)),
    ],
  );
}
