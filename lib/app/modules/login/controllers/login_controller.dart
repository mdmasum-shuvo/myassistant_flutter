import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../provider/providers/login_provider.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';

class LoginController extends GetxController {


  final LoginProvider _provider = LoginProvider();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
        Get.offAllNamed(Routes.DASHBOARD);
      }else{
        EasyLoading.dismiss();

        Utils.showControllerError(response);
      }
    });
  }
}
