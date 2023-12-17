import 'package:get/get.dart';

import '../controller/leads_controller.dart';


class LeadsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadsController>(
          () => LeadsController(),
    );
  }
}
