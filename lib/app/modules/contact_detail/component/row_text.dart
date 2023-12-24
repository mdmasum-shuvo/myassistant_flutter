import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/Colors.dart';

import '../../../theme/text_theme.dart';

Widget rowText16_300(String t1, String t2,[Color color = greyText]){
  return Row(
    children: [
      Expanded(child: text_16_300_inter(t1,color)),
      Expanded(child: text_16_300_inter(t2, color, TextAlign.right)),
    ],
  );
}

Widget rowText18_500(String t1, String t2,[Color color = white]){
  return Row(
    children: [
      Expanded(child: text_18_500_inter(t1,color)),
      Expanded(child: text_18_500_inter(t2, color, TextAlign.right)),
    ],
  );
}

Widget rowTextL16_300_R18_500(String t1, String t2){
  return Row(
    children: [
      Expanded(child: text_16_300_inter(t1,greyText)),
      Expanded(child: text_18_500_inter(t2, white, TextAlign.right)),
    ],
  );
}