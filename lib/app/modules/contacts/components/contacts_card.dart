import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/routes/app_pages.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../../models/contacts/contact_list_model.dart';

Widget contactsCard(String title, RxList<ContactData> contacts){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      text_22_500_inter(title),
      height25(30),
      ListView.builder(
        itemCount: contacts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          ContactData contact = contacts[index];
          return InkWell(
            onTap: () => Get.toNamed(Routes.CONTACT_DETAIL, arguments: contact.id.toString()),
            child: Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: primaryColor,
                    child: text_16_500_inter(title),
                  ),
                  Gap(20.w),
                  Expanded(child: text_18_400_inter(contact.name ?? "")),
                ],
              ),
            ),
          );
        },
      ),
      height25(30),
      const Divider(color: Color(0x33FFFFFF), height: .5),
      height25(16)
    ],
  );
}