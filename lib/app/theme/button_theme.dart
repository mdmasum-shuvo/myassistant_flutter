import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget primaryButton(String text, Function() onPressed,[Color color = Colors.white]) {
  return SizedBox(
    height: 56.h,
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
                // side: const BorderSide(color: primaryDarkColor),
            )),
        onPressed: () {
          onPressed();
        },
        child: text_16_500(text, color)),
  );
}


Widget buttonWithLeftLogo(String svg, String text, Function() onPressed,[Color color = Colors.black, Color backgroundColor = Colors.white]) {
  return SizedBox(
    height: 56.h,
    width: double.infinity,
    child: ElevatedButton.icon(
      icon: SvgPicture.asset(svg),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: const BorderSide(color: Color(0xFFEEEEEE)),
            )),
        onPressed: () {
          onPressed();
        },
        label: text_16_500(text, color)),
  );
}

// Widget buttonWithLeftLogo(String svg, String text, Function() onPressed,
//     [Color color = Colors.black, Color backgroundColor = Colors.white]) {
//   return SizedBox(
//     height: 40.0,
//     width: double.infinity,
//     child: GestureDetector(
//       onTap: onPressed,
//       child: Card(
//         color: backgroundColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0.r),
//           side: const BorderSide(color: Color(0xFFEEEEEE)),
//         ),
//
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 15.0.h, horizontal: 10.0.w),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(svg),
//               SizedBox(width: 8.0.w), // Adjust the spacing between icon and text
//               text_16_500(text, color),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
