import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

void showPopupMenu(BuildContext context, Offset position) {
  // final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  // final double screenWidth = overlay.size.width;
  // final RelativeRect position = RelativeRect.fromLTRB(
  //   screenWidth - 0, // Adjust the value to set the right margin
  //   100, // Adjust the value to set the top margin
  //   screenWidth,
  //   0,
  // );
  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect positions = RelativeRect.fromRect(
    Rect.fromPoints(position, position), // Use the tap position as the menu position
    Offset.zero & overlay.size,
  );

  showMenu<String>(
    context: context,
    position: positions,
    color: const Color(0x1AFFFFFF),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r)
    ),
    items: <PopupMenuEntry<String>>[
       PopupMenuItem<String>(
        value: 'Call',
        child: text_14_400_inter('Call'),
      ),
       PopupMenuItem<String>(
        value: 'Edit',
        child: text_14_400_inter('Edit'),
      ),
       PopupMenuItem<String>(
        value: 'Delete',
        child: text_14_400_inter('Delete'),
      ),
    ],
  ).then((String? value) {
    if (value != null) {
      // Handle the selected option
      if (value == 'Call') {

      } else if (value == 'Delete') {

      }else if (value == 'Edit') {

      }
    }
  });
}