import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Future<String?> showDialogue(BuildContext context, Offset position, List<String> list) async{

  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RelativeRect positions = RelativeRect.fromRect(
    Rect.fromPoints(position, position), // Use the tap position as the menu position
    Offset.zero & overlay.size,
  );

  return await showMenu<String>(
    context: context,
    position: positions,
    color: primaryColor,
    surfaceTintColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.r),
    ),
    // items: <PopupMenuEntry<String>>[
    //   PopupMenuItem<String>(
    //     value: 'Call',
    //     child: text_14_400_inter('Call'),
    //   ),
    //   PopupMenuItem<String>(
    //     value: 'Edit',
    //     child: text_14_400_inter('Edit'),
    //   ),
    //   PopupMenuItem<String>(
    //     value: 'Delete',
    //     child: text_14_400_inter('Delete'),
    //   ),
    // ],
    items: list.map((e) => PopupMenuItem<String>(
      value: e,
      child: text_14_400_inter(e),
    )).toList(),
  ).then((String? value) {
    return value;
  });
}