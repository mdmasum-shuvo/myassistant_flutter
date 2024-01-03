import 'dart:io';

import 'package:advance_notification/advance_notification.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';


void getxSnackbar(String title, String message, Color color) {
  AdvanceSnackBar(message: message,textColor: white,bgColor: color).show(Get.context!);

}
