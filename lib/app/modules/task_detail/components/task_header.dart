import 'package:flutter/material.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/text_theme.dart';
import '../../profile/components/title_and_value_row.dart';

Widget taskHeader(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Align( alignment: Alignment.centerLeft,child: text_22_500_inter("Social App Design",)),
      height25(40),
      titleAndValueRow("Activity type", "Call"),
      titleAndValueRow("Assign Task", "Albert Flores"),
      titleAndValueRow("Task Title", "Development a dashboard"),
      titleAndValueRow("Reminder", "December 5th 2023, 10:34"),
      titleAndValueRow("Status", "Completed"),
    ],
  );
}