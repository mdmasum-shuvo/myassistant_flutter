import 'package:flutter/cupertino.dart';

import '../../../theme/text_theme.dart';

Widget customRowText(String t1, String t2, VoidCallback onT2Tap ){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(flex: 3, child: text_22_500_inter(t1)),
      Expanded(child: GestureDetector(onTap: onT2Tap, child: text_18_400_inter(t2,)))
    ],
  );
}
