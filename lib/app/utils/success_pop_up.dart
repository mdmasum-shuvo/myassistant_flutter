import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';


Future<void> showMyDialog(BuildContext context, String message) async {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.rightSlide,
    title: 'Success',
    desc: message,
    btnOkOnPress: () {
      Get.offAllNamed(Routes.HOME);
    },
  ).show();
}