import 'package:get/get.dart';

import '../controllers/lead_detail_controller.dart';

class LeadDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeadDetailController>(
      () => LeadDetailController(),
    );
  }
}
