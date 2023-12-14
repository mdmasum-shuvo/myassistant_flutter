import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/theme/colors.dart';

class WelcomeController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: white
    ));
  }

  @override
  void onReady() {
    super.onReady();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: white
    ));
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
