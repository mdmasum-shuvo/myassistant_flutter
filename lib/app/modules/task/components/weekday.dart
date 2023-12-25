import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../theme/Colors.dart';
import '../../../theme/text_theme.dart';

Widget weekDay(){
  return Column(
    children: [
      CalendarWeek(
        backgroundColor: primaryDarkColor,
        controller: CalendarWeekController(),
        showMonth: true,
        height: 150.h,
        // minDate: DateTime.now(),
        minDate: DateTime.now().add(
          Duration(days: -365),
        ),
        maxDate: DateTime.now().add(Duration(days: 365)),

        onDatePressed: (DateTime datetime) {
          // Do something
          debugPrint("Date: pressed:");
        },
        onDateLongPressed: (DateTime datetime) {
          // Do something
        },
        onWeekChanged: () {
          // Do something
        },
        monthViewBuilder: (DateTime time) => Align(
          alignment: FractionalOffset.center,
          child: text_22_500_inter(DateFormat.yMMMM().format(time),),
        ),
        dateStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: white),
        weekendsStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: greyText),
        dayOfWeekStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: greyText),
        marginDayOfWeek: EdgeInsets.only(top: 16.h),
        pressedDateStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w500, color: white, ),
        pressedDateBackgroundColor: primaryColor,
        marginMonth: EdgeInsets.zero,
      )
    ],
  );
}