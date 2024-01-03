import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialerController extends GetxController {
  //TODO: Implement DialerController

  final textCOntroller=TextEditingController(text: "4077");
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

  void increment() => count.value++;
}
