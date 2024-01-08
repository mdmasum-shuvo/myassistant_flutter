import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_detail_model.dart';

import '../../../providers/contacts_provider.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

class ContactDetailController extends GetxController {
  //TODO: Implement ContactDetailController

  // var title = "".obs;

  var selectedOption = "".obs;
  var onlnMtng = 'Online meeting'.obs;
  var bokApnmnt = 'Book an appointment'.obs;
  RxBool isCircle=false.obs;
  var id = "0".obs;

  Rx<ContactDetailData?> contactDetail = ContactDetailData().obs;

  final count = 0.obs;
  @override
  void onInit() async{
    super.onInit();
    if(Get.arguments != null){
      // title.value = Get.arguments;
      id.value = Get.arguments;
    }

    await getContactDetail();
  }

  final ContactsProvider _provider = ContactsProvider();


  Future<void> getContactDetail() async{
    EasyLoading.show();
    _provider
        .contactDetail(id.value,)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null){
          contactDetail.value = response.data;
        }else{
        }

        getxSnackbar("", "Successfully", Colors.green);
      }else{
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

        Utils.showControllerError(response);
      }
    });
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
