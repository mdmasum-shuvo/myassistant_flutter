import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_list_model.dart';
import 'package:my_assistant/app/modules/create_lead/controllers/create_lead_controller.dart';

import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';




Future<ContactData?> showContactListForLeadPopUp(BuildContext context, Offset position, CreateLeadController controller) async{

  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect positions = RelativeRect.fromRect(
    Rect.fromPoints(position, position), // Use the tap position as the menu position
    Offset.zero & overlay.size,
  );

  return await showMenu<ContactData>(
    context: context,
    position: positions,
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    items: controller.contactController?.value.contactList.map((e) => PopupMenuItem<ContactData>(
      value: e,
      child: text_18_500_inter(e.name ?? ""),
    )).toList() ?? [],
  ).then((ContactData? value) {
    if (value != null) {

      return value;

    }
  });
}

