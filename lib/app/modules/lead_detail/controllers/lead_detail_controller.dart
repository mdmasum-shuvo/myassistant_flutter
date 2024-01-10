import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/lead/lead_detail_model.dart';
import 'package:my_assistant/app/providers/lead_provider.dart';

import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

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

  var isLoading = false.obs;
  final LeadProvider _provider = LeadProvider();

  Rx<Detail>? leadDetail;
  getLeadDetail(String id){
    isLoading.value = true;
    EasyLoading.show();
    _provider
        .leadDetail(id)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null){
          leadDetail = response.data!.obs;
          Detail d = response.data!;
          firstNameController.text = d.firstName ?? "";
          lastNameController.text = d.lastName ?? "";
          mobileController.text = d.phoneNumber ?? "";
          emailController.text = d.email ?? "";
        }else{
        }
        isLoading.value = false;
        // getxSnackbar("", "Successfully", Colors.green);
      }else{
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
        isLoading.value = false;

        Utils.showControllerError(response);
      }
    });
  }


  @override
  void onInit() {
    super.onInit();
    var ar = Get.arguments;
    if(ar != null){
      getLeadDetail(ar);
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

}
