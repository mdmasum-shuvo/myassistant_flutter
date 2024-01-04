import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../provider/providers/forget_password_provider.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class VerificationController extends GetxController{


  var otpFormKey = GlobalKey<FormState>().obs;
  TextEditingController oneController = TextEditingController();
  TextEditingController twoController = TextEditingController();
  TextEditingController threeController = TextEditingController();
  TextEditingController fourController = TextEditingController();
  var email = "".obs;

  final ForgetPasswordProvider _provider = ForgetPasswordProvider();

  verifyOtp(){
    final _formData = FormData({
      'email': email.value,
      'otp' : "${oneController.text}${twoController.text}${threeController.text}${fourController.text}",
    });

    EasyLoading.show();
    _provider.otpVerify(_formData).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
        Get.offAllNamed(Routes.RESETPASSWORD, arguments: email.value);
        //Get.back();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    var d = Get.arguments;
    if(d != null){
      email.value = d;
    }
  }
}