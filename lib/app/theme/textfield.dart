import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/theme/theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import 'colors.dart';

Widget textField(String hint, TextEditingController controller,String prefixSvg,
    {TextInputType keyboardType = TextInputType.text,
      String? Function(String?)? validator,
      void Function(String)? onChanged,
      bool obscureText = false,
      Widget? suffix,
      bool includePrefix = true,

      bool enabled = true,
      VoidCallback? onTap,

    }) {
  return TextFormField(
    enabled: enabled,
    keyboardType: keyboardType,
    controller: controller,
    validator: validator,
    onChanged: onChanged,
    onTap: onTap,
    obscureText: obscureText,
    style: GoogleFonts.poppins(
      fontSize: 16.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500
    ),
    decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffix,
      prefixIcon: includePrefix ? Padding(
    padding: const EdgeInsets.all(15.0),
    child: SvgPicture.asset(prefixSvg,
      // height: 20.h, width: 20.w, fit: BoxFit.fill, color: Colors.black,
    ),
  ) : null,
      // icon: prefix,

    ),
  );
  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //     text_14_700(title),
  //     const SizedBox(
  //       height: 4,
  //     ),
  //
  //     const SizedBox(
  //       height: 12,
  //     )
  //   ],
  // );
}

Widget textFieldAgenda(
    String title, String hint, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      const SizedBox(
        height: 4,
      ),
      TextFormField(
        minLines: 8,
        maxLines: null,
        maxLength: 1000,
        keyboardType: TextInputType.multiline,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
      const SizedBox(
        height: 12,
      )
    ],
  );
}

Widget dateField( String hint, RxString date, Function onPress) {
  return Obx(() => TextFormField(
    onTap: () async {
      onPress();
    },
    keyboardType: TextInputType.text,
    readOnly: true,
    controller: TextEditingController(text: date.value),
    decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(Assets.date,
            // height: 20.h, width: 20.w, fit: BoxFit.fill, color: Colors.black,
          ),
        )),
  ),);
  // return Obx(() => Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //     text_14_700(title),
  //     const SizedBox(
  //       height: 4,
  //     ),
  //     TextFormField(
  //       onTap: () async {
  //         onPress();
  //       },
  //       keyboardType: TextInputType.text,
  //       readOnly: true,
  //       controller: TextEditingController(text: date.value),
  //       decoration: InputDecoration(
  //           hintText: hint,
  //           suffixIcon: const Icon(
  //             Icons.calendar_month_outlined,
  //             color: textColor,
  //           )),
  //     ),
  //     const SizedBox(
  //       height: 12,
  //     )
  //   ],
  // ));
}

Widget timeField(String title, RxString time, String hint, Function() onClick) {
  return Obx(() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_14_700(title),
      const SizedBox(
        height: 4,
      ),
      TextFormField(
        onTap: () async {
          onClick();
        },
        controller: TextEditingController(text: time.value.toString()),
        keyboardType: TextInputType.text,
        readOnly: true,
        decoration: InputDecoration(
            hintText: hint,
            suffixIcon: const Icon(
              Icons.watch_later_outlined,
              color: textColor,
            )),
      ),
      const SizedBox(
        height: 12,
      )
    ],
  ));
}
