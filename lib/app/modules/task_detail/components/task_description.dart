import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/theme/textfield.dart';

Widget taskDescription(TextEditingController controller){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      text_18_500_inter("Description"),
      height25(20),
      textFieldAgenda( "",controller, true)
    ],
  );
}