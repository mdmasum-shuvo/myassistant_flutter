import 'package:get/get.dart';

class ContactDetailController extends GetxController {
  //TODO: Implement ContactDetailController

  var title = "".obs;

  var selectedOption = "".obs;
  var onlnMtng = 'Online meeting'.obs;
  var bokApnmnt = 'Book an appointment'.obs;
  RxBool isCircle=false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    if(Get.arguments != null){
      title.value = Get.arguments;
    }
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
