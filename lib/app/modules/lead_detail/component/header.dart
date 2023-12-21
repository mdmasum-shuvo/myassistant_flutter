
import 'package:flutter/material.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';

Widget leadDetailHeader(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_22_500_inter("Caleb Anderson"),
      height25(10),
      text_16_300_inter("+9 230 945 095"),
      text_16_300_inter("Albert Flores"),
      height25(30),
    ],
  );
}