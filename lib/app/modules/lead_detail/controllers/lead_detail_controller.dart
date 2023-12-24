import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LeadDetailController extends GetxController {
  //TODO: Implement LeadDetailController

  var isTimeLineView = true.obs;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController noteController = TextEditingController(text: "Welcome to DoorTrack! Elevate your customer and member management experience. Effortlessly streamline tasks, nurture leads, and enhance communication. Sign up or log in to unlock a world of organizational efficiency.");
  TextEditingController projectInterestController = TextEditingController();
  TextEditingController requirementController = TextEditingController();
  TextEditingController preferenceController = TextEditingController();
  // TextEditingController preferenceController = TextEditingController();

  final RxString salesType = "".obs;


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
