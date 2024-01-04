import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/provider/providers/forget_password_provider.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class ForgetPasswordController extends GetxController{


  TextEditingController emailController = TextEditingController();

  ForgetPasswordProvider _provider = ForgetPasswordProvider();

  sendOtp(){
    final _formData = FormData({
      'email': emailController.value.text,
    });

    EasyLoading.show();
    _provider.otpSend(_formData).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
        Get.toNamed(Routes.VERIFICATION, arguments: emailController.value.text);
        //Get.back();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }
}