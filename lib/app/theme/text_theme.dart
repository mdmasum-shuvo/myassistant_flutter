

import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

Widget text_18_800(String? value,[Color color = Colors.black]){
  return Text("$value",style:textTheme1.headlineLarge?.copyWith(color: color));
}

Widget text_24_800(String? value,[Color color = Colors.black]){
  return Text("$value",style:textTheme1.displayLarge?.copyWith(color: color));
}
Widget text_16_700(String? value,[Color color = Colors.black]){
  return Text("$value",style:textTheme1.headlineMedium?.copyWith(color: color),textAlign: TextAlign.start,);
}

Widget text_12_700(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.bodyLarge?.copyWith(color: color,fontWeight: FontWeight.w700),textAlign: TextAlign.start,);
}

Widget text_16_500(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.headlineSmall?.copyWith(color: color));
}
Widget text_16_400(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleSmall?.copyWith(color: color, ));
}

Widget text_16_600(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleLarge?.copyWith(color: color));
}

Widget text_14_400(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color));
}

Widget text_16_300(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color,fontWeight: FontWeight.w300));
}
Widget text_18_400(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color,fontSize: 18.sp));
}
Widget text_14_500(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.titleMedium?.copyWith(color: color,fontWeight: FontWeight.w500));
}

Widget text_12_400(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.bodyLarge?.copyWith(color: color));
}

Widget text_14_700(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme1.headlineMedium?.copyWith(color: color,fontSize: 14.sp));
}

Widget text_10_400(String? value,[Color color = white]){
  return Text("$value",style:textTheme1.bodyMedium?.copyWith(color: color));
}


/// theme 2 and font family is Inter


Widget text_18_800_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.headlineLarge?.copyWith(color: color));
}

Widget text_18_400_inter(String? value,[Color color = const Color(0xB2FFFFFF)]){
  return Text("$value", textAlign: TextAlign.right, style:textTheme2.titleSmall?.copyWith(color: color, fontSize: 18.sp, fontWeight: FontWeight.w400,));
}

Widget text_18_500_inter(String? value,[Color color = white, TextAlign textAlign = TextAlign.left]){
  return Text("$value", textAlign: textAlign, style:textTheme2.titleMedium?.copyWith(color: color, fontSize: 18.sp, fontWeight: FontWeight.w500,));
}

Widget text_26_500_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.displayLarge?.copyWith(color: color));
}

Widget text_20_500_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.displayLarge?.copyWith(color: color,fontSize: 20.sp));
}

Widget text_32_500_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.displayLarge?.copyWith(color: color,fontSize: 32.sp));
}

Widget text_24_800_inter(String? value,[Color color =white]){
  return Text("$value",style:textTheme2.displayMedium?.copyWith(color: color));
}

Widget text_24_500_inter(String? value,[Color color =white]){
  return Text("$value", textAlign: TextAlign.left, style:textTheme2.titleMedium?.copyWith(color: color, fontSize: 24.sp, fontWeight: FontWeight.w500));
}

Widget text_22_500_inter(String? value,[Color color =white]){
  return Text("$value",style:textTheme2.titleMedium?.copyWith(color: color, fontSize: 22.sp, fontWeight: FontWeight.w500));
}

Widget text_16_700_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.headlineMedium?.copyWith(color: color),textAlign: TextAlign.start,);
}

Widget text_12_700_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.bodyLarge?.copyWith(color: color,fontWeight: FontWeight.w700),textAlign: TextAlign.start,);
}

Widget text_16_500_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.headlineSmall?.copyWith(color: color));
}
Widget text_16_400_inter(String? value,[Color color = white, TextAlign? textAlign]){
  return Text("$value",style:textTheme2.titleSmall?.copyWith(color: color, ), textAlign: textAlign,);
}

Widget text_16_300_inter(String? value,[Color color = greyText, TextAlign? textAlign]){
  return Text("$value",style:textTheme2.titleSmall?.copyWith(color: color, fontWeight: FontWeight.w300), textAlign: textAlign,);
}

Widget text_16_600_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.titleLarge?.copyWith(color: color));
}

Widget text_14_400_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.titleMedium?.copyWith(color: color));
}
Widget text_14_500_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.titleMedium?.copyWith(color: color,fontWeight: FontWeight.w500));
}

Widget text_12_400_inter(String? value,[Color color = white]){
  return Text("$value",style:textTheme2.bodyLarge?.copyWith(color: color));
}

Widget text_14_700_inter(String? value,[Color color = textColor]){
  return Text("$value",style:textTheme2.headlineMedium?.copyWith(color: color,fontSize: 14.sp));
}

Widget text_10_400_inter(String? value,[Color color = Colors.black]){
  return Text("$value",style:textTheme2.bodyMedium?.copyWith(color: color));
}
