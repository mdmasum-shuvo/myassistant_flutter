import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TaskDetailController extends GetxController {
  //TODO: Implement TaskDetailController
  TextEditingController taskDetailController = TextEditingController(text: "Welcome to DoorTrack! Elevate your customer and member management experience. Effortlessly streamline tasks, nurture leads, and enhance communication. Sign up or log in to unlock a world of organizational efficiency.");
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
