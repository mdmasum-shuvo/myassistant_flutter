import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/modules/contact_detail/component/row_text.dart';
import 'package:my_assistant/app/modules/contact_detail/controllers/contact_detail_controller.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget invoice(ContactDetailController controller,){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_22_500_inter('Invoice'),
      height25(20),
      Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r)
        ),
        color: primaryColor,
        surfaceTintColor: primaryColor,

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Column(
                  children: [
                    rowText16_300("Item", "Price"),
                    height25(5),
                    rowText18_500("UI/UX Designs", r"$2500"),
                    height25(15),
                    rowText18_500("Custom App Design", r"$350"),
                    height25(),
                    Align(alignment: Alignment.centerLeft, child: InkWell(onTap: () {

                    }, child: text_20_300_inter('+  Add Item')),),
                    height25(31),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                ),
                color: const Color(0xFF505050),
                surfaceTintColor: const Color(0xFF505050),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 17.h),
                  child: Column(
                    children: [
                      rowTextL16_300_R18_500('Sub Total', r'$250'),
                      height25(10),
                      rowTextL16_300_R18_500('Inclusive Tax 10%', r'$250'),
                      height25(10),
                      rowTextL16_300_R18_500('Grand Total', r'$2,580'),
                    ],
                  ),
                ),
              ),
              height25(10),
              primaryButton("Share Invoice", () => null, textBlack, white),
            ],
          ),
        ),
      ),
      height25(40),
    ],
  );
}