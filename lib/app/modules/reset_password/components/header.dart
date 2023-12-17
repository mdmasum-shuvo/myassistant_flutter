
import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/Colors.dart';

import '../../../theme/text_theme.dart';

Widget header(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter("Reset password"),
      text_16_400_inter("Confirm your new password to get started!", greyText),
    ],
  );
}