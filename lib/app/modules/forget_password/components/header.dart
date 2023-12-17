

import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/Colors.dart';

import '../../../theme/text_theme.dart';

Widget header(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter("Forget password"),
      text_16_400_inter("Enter your email to reset your password", greyText),

    ],
  );
}