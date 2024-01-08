import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../providers/login_provider.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

class LoginController extends GetxController {


  final LoginProvider _provider = LoginProvider();

  TextEditingController emailController = TextEditingController(text: "srsagor010071@gmail.com");
  TextEditingController passwordController = TextEditingController(text: "12345678");

  // TextEditingController emailController = TextEditingController(text: "");
  // TextEditingController passwordController = TextEditingController(text: "");
  var showPassword = false.obs;
  // final emailPhoneController = TextEditingController(text: "habiburrahman.developer@gmail.com");


  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void login() async {
    if(!isValid()) {
      return;
    }
    EasyLoading.show();

    _provider
        .login(emailController.text.toString(),
        passwordController.text.toString())
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();

        Constants.token="Bearer ${response.token!}";
        Constants.headers = {
          "Accept": "application/json",
          "Authorization": Constants.token
        };
        getxSnackbar("", "Login Successfully", Colors.green);
        Get.offAllNamed(Routes.DASHBOARD);
      }else{
        EasyLoading.dismiss();
        getxSnackbar("", response.message ?? "", red);

        Utils.showControllerError(response);
      }
    });
  }

  bool isValid() {
    if(emailController.text=="" || passwordController.text==""){
      getxSnackbar("", "Please input email and password !", red);

      return false;
    }


    return true;
  }
}
