
import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/Colors.dart';

import '../../../theme/text_theme.dart';

Widget header(String email){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter("Verify email"),
      text_16_400_inter("A 4 digit code sent to $email enter code to continue", greyText),
    ],
  );
}