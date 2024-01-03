import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:my_assistant/app/modules/contact_detail/controllers/contact_detail_controller.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget taskCard(ContactDetailController controller, String title, String buttonText, VoidCallback onTap){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_22_500_inter(title),
      height25(20),
      Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r)
        ),
        color: primaryColor,
        surfaceTintColor: primaryColor,

        child: Padding(padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 25.w),
          child: Column(
            children: [
              // RadioListTile(
              //   contentPadding: EdgeInsets.zero,
              //   controlAffinity: ListTileControlAffinity.leading,
              //   activeColor: primaryDarkColor,
              //   title: text_18_300_inter(controller.onlnMtng.value),
              //   value: controller.onlnMtng.value,
              //   groupValue: controller.selectedOption.value,
              //   onChanged: (value) {
              //
              //       if(value != null){
              //         controller.selectedOption.value = value;
              //       }
              //
              //   },
              // ),
              // RadioListTile(
              //   contentPadding: EdgeInsets.zero,
              //   controlAffinity: ListTileControlAffinity.leading,
              //   activeColor: primaryDarkColor,
              //   title: text_18_300_inter(controller.bokApnmnt.value),
              //   value: controller.bokApnmnt.value,
              //   groupValue: controller.selectedOption.value,
              //   onChanged: (value) {
              //     if(value != null){
              //       controller.selectedOption.value = value;
              //     }
              //   },
              // ),
              InkWell(
                onTap: () {
                  controller.selectedOption.value = controller.onlnMtng.value;
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: controller.selectedOption.value == controller.onlnMtng.value ? primaryDarkColor : white,
                    child: CircleAvatar(
                      backgroundColor:controller.selectedOption.value == controller.onlnMtng.value ? primaryDarkColor : primaryColor,
                      radius: 6,
                    ),
                    ),
                    Gap(20.w),
                    text_20_300_inter(controller.onlnMtng.value),
                  ],
                ),
              ),
              height25(10),
              InkWell(
                onTap: () {
                  controller.selectedOption.value = controller.bokApnmnt.value;
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: controller.selectedOption.value == controller.bokApnmnt.value ? primaryDarkColor : white,
                    child: CircleAvatar(
                      backgroundColor:controller.selectedOption.value == controller.bokApnmnt.value ? primaryDarkColor : primaryColor,
                      radius: 6,
                    ),
                    ),
                    Gap(20.w),
                    text_20_300_inter(controller.bokApnmnt.value),
                  ],
                ),
              ),
              height25(),
              Center(child: InkWell(onTap: onTap, child: text_20_300_inter(buttonText)),),
            ],
          ),
        ),
      ),
      height25(40),
    ],
  );
}