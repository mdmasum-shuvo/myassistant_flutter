import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/text_theme.dart';

Widget titleAndValueRow(String title, String value){
  return Padding(
    padding: EdgeInsets.only(bottom: 10.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: text_16_400_inter(title,const Color(0xB2FFFFFF))),
        Expanded(child: text_16_400_inter(":  $value",)),
      ],
    ),
  );
}