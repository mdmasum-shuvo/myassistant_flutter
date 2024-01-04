import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../providers/forget_password_provider.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/success_pop_up.dart';

class ResetPasswordController extends GetxController{

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  var showPassword = false.obs;
  var showConfirmPassword = false.obs;


  var email = "".obs;

  final ForgetPasswordProvider _provider = ForgetPasswordProvider();

  changePassword(BuildContext context){
    final _formData = FormData({
      'email': email.value,
      'password': passwordController.text,
      'confirm_password': confirmPasswordController.text,
    });

    EasyLoading.show();
    _provider.changePassword(_formData).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
        successDialog(context,"Password Changed", "Password has changed successfully, login to your account.", "login", () {
          Get.offAllNamed(Routes.LOGIN);
        });
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