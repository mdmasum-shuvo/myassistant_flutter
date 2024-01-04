import 'dart:ffi';

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
    cursorColor: Colors.white,
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

Widget textFieldNoIcon(String hint, TextEditingController controller,

    {TextInputType keyboardType = TextInputType.text,
      bool isExpandText=false,
      String? Function(String?)? validator,
      void Function(String)? onChanged,
      bool obscureText = false,
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

      // icon: prefix,
      contentPadding: EdgeInsets.only(
        left: 24.w,
        right: 16,
        bottom: 13.5.h, // HERE THE IMPORTANT PART
        top: 13.5.h, // HERE THE IMPORTANT PART
      ),
      // prefixIconColor: Colors.black,

      // TextStyle(color: const Color(0xff666666),fontSize: 14.sp)
      hintStyle:  GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      //background: #8BC53F40;

      fillColor: primaryColor,

      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    ),
    maxLines:isExpandText ?5 :1,
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

Widget textFieldDialer(String hint, TextEditingController controller,

    {TextInputType keyboardType = TextInputType.text,
      bool isExpandText=false,
      String? Function(String?)? validator,
      void Function(String)? onChanged,
      bool obscureText = false,
      bool enabled = true,
      VoidCallback? onTap,

    }) {
  return TextFormField(
    enabled: enabled,
    keyboardType: TextInputType.number,
    controller: controller,
    validator: validator,
    onChanged: onChanged,
    onTap: onTap,
    obscureText: obscureText,
    cursorColor: Colors.white,

    style: GoogleFonts.inter(
        fontSize: 30.sp,
      color: Colors.white,
      fontWeight: FontWeight.w500
    ),
    textAlign: TextAlign.center,
    decoration: InputDecoration(
        hintText: hint,

      // icon: prefix,
      contentPadding: EdgeInsets.only(
        left: 24.w,
        right: 16,
        bottom: 13.5.h, // HERE THE IMPORTANT PART
        top: 13.5.h, // HERE THE IMPORTANT PART
      ),
      // prefixIconColor: Colors.black,

      // TextStyle(color: const Color(0xff666666),fontSize: 14.sp)
      hintStyle:  GoogleFonts.inter(
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
        color: white,
      ),
      //background: #8BC53F40;

      fillColor: primaryColor,

      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
    ),
    maxLines:isExpandText ?5 :1,
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
    String hint, TextEditingController controller,[bool readOnly = false]) {
  return TextFormField(
    minLines: 8,
    maxLines: null,
    maxLength: 1000,
    readOnly: readOnly,
    keyboardType: TextInputType.multiline,
    controller: controller,
    style: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      color: const Color(0xB2FFFFFF)
    ),
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r)
      ),
    ),
  );
  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //
  //     TextFormField(
  //       minLines: 8,
  //       maxLines: null,
  //       maxLength: 1000,
  //       keyboardType: TextInputType.multiline,
  //       controller: controller,
  //       decoration: InputDecoration(
  //         hintText: hint,
  //       ),
  //     ),
  //     const SizedBox(
  //       height: 12,
  //     )
  //   ],
  // );
}

Widget dateField( String hint, RxString date, Function onPress) {
  return Obx(() => TextFormField(
    onTap: () async {
      onPress();
    },
    keyboardType: TextInputType.text,
    readOnly: true,
    controller: TextEditingController(text: date.value),
    style: GoogleFonts.poppins(
        fontSize: 16.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500
    ),
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
