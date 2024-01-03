import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateLeadController extends GetxController {
  //TODO: Implement CreateLeadController
  final textController = TextEditingController(text: "");
  final count = 0.obs;
  final RxString text = "".obs;
  RxBool isCircle=false.obs;

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
