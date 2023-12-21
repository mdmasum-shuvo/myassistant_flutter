import 'package:flutter/material.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

Widget changePassDeleteAccount(){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      primaryButton("Change Password", () => null, textBlack,white),
      height25(20),
      primaryButton("Delete Account", () => null, white,red),
    ],
  );
}