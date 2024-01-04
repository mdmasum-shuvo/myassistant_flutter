import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../provider/providers/registration_provider.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';

class RegisterController extends GetxController{

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  var showPassword = false.obs;
  var date = ''.obs;
  var dateTime = DateTime(DateTime.now().year - 18).obs;

  onDateChange(){

  }
  final RegistrationProvider _provider = RegistrationProvider();

  create(){
    final _formData = FormData({
      'first_name': firstNameController.value.text,
      'email': emailController.value.text,
      'password': passwordController.value.text,
      'dob': date.value,
      'phone_number': "01774142172", //TOTO: phoneNumberController.value.text
      'last_name': lastNameController.value.text,

    });

    EasyLoading.show();
    _provider.create(_formData).then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        getxSnackbar("", response.message ?? "", Colors.green);
        EasyLoading.dismiss();
        Get.offAllNamed(Routes.LOGIN);
        //Get.back();
      } else {
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
      }
    });
  }
}