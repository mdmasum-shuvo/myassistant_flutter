import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';


ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    secondaryHeaderColor: primaryColor,
    scaffoldBackgroundColor: primaryDarkColor,
    inputDecorationTheme: inputDecorationTheme(), appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryDarkColor))

  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: EdgeInsets.only(
      left: 16,
      right: 16,
      bottom: 13.5.h, // HERE THE IMPORTANT PART
      top: 13.5.h, // HERE THE IMPORTANT PART
    ),
    // prefixIconColor: Colors.black,
    //TextStyle(color: const Color(0xff666666),fontSize: 14.sp)
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
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: white),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );
}

final TextTheme textTheme1 = TextTheme(
  displayLarge: GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineLarge: GoogleFonts.inter(
      fontSize: 18.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineMedium: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: textColor),
  headlineSmall:
  GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w400,color: primaryDarkColor),

  titleLarge: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: textColor),
  titleMedium: GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: textColor),
  titleSmall: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyLarge: GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyMedium: GoogleFonts.inter(
      fontSize: 10.sp,
      color: textColor),

  bodySmall: GoogleFonts.inter(
      fontSize: 10.sp,
      color: textColor),

);
final TextTheme textTheme2 = TextTheme(
  displayLarge: GoogleFonts.inter(
      fontSize: 26.sp,
      fontWeight: FontWeight.w500,
      color: textColor),
  displayMedium: GoogleFonts.inter(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineLarge: GoogleFonts.inter(
      fontSize: 18.sp,
      fontWeight: FontWeight.w800,
      color: textColor),
  headlineMedium: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: textColor),
  headlineSmall:
  GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w400,color: primaryDarkColor),

  titleLarge: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: textColor),
  titleMedium: GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: textColor),
  titleSmall: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyLarge: GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: textColor),
  bodyMedium: GoogleFonts.inter(
      fontSize: 10.sp,
      color: textColor),

  bodySmall: GoogleFonts.inter(
      fontSize: 10.sp,
      color: textColor),

);

