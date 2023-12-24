import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/theme/textfield.dart';

Widget note(TextEditingController controller){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      text_18_500_inter("Note"),
      height25(20),
      textFieldAgenda( "",controller,true)
    ],
  );
}