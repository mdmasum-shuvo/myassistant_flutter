import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/profile/components/title_and_value_row.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget profileDetail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Align( alignment: Alignment.centerLeft,child: text_22_500_inter("Users Details",)),
      height25(30),
      titleAndValueRow("User Name", "Aaron Mitchell"),
      titleAndValueRow("User Role", "Admin"),
      titleAndValueRow("Company Name", "DoorTrack"),
      titleAndValueRow("Company Website", "doortrack.com"),
    ],
  );
}