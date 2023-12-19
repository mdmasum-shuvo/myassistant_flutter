import 'package:get/get.dart';

import '../controllers/create_lead_controller.dart';

class CreateLeadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateLeadController>(
      () => CreateLeadController(),
    );
  }
}
