import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../theme/Colors.dart';
import '../../../theme/text_theme.dart';

Widget weekDay(){
  return Column(
    children: [
      ClipRRect(
        child: CalendarWeek(
          backgroundColor: primaryDarkColor,
          controller: CalendarWeekController(),
          height: 130,
          showMonth: true,
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
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: text_22_500_inter(DateFormat.yMMMM().format(time),),
            ),
          ),
          dateStyle: GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500, color: white),
          weekendsStyle: GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500, color: white),
          dayOfWeekStyle: GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500, color: white),
          marginDayOfWeek: EdgeInsets.only(top: 30.h),
          pressedDateStyle: GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w500, color: white, ),
          pressedDateBackgroundColor: Colors.black,
          marginMonth: EdgeInsets.zero,
        ),
      )
    ],
  );
}