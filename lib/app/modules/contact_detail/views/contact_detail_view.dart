import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/contact_detail/component/invoice.dart';
import 'package:my_assistant/app/modules/contact_detail/component/notes.dart';
import 'package:my_assistant/app/modules/contact_detail/component/profile_header.dart';
import 'package:my_assistant/app/modules/contact_detail/component/row_item.dart';
import 'package:my_assistant/app/modules/contact_detail/component/vertical_item.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/custom_appbar.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../controllers/contact_detail_controller.dart';

class ContactDetailView extends GetView<ContactDetailController> {
  const ContactDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondaryAppBar(context, "Contact", (v) => null),
      body: Obx(() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 23.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileHeader(controller),
              height25(40),
              Align(alignment: Alignment.centerLeft, child: text_22_500_inter("Contact Information")),
              height25(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  rowItem(Assets.email, "Email"),
                  Gap(15.w),
                  rowItem(Assets.callWhite, "Call"),
                  Gap(15.w),
                  rowItem(Assets.whatsApp, "WhatsApp"),
                ],
              ),
              height25(20),
              verticalItem(Assets.mobile, "Mobile", "+1 234 567 899"),
              height25(20),
              verticalItem(Assets.location, "Location", "12, London, United Kingdom"),
              height25(20),
              verticalItem(Assets.security, "Security Number", "+1 234 567 899"),
              height25(30),
              notes(controller),
              invoice(controller,)
            ],
          ),
        ),
      ),)
    );
  }
}
