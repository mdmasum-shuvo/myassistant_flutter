import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/lead/lead_detail_model.dart';
import 'package:my_assistant/app/models/task/lead_wise_task_model.dart';
import 'package:my_assistant/app/providers/lead_provider.dart';
import 'package:my_assistant/app/providers/task_provider.dart';

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
  final TaskProvider _provider2 = TaskProvider();

  var leadDetail = Detail().obs;
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
          leadDetail.value = response.data!;
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

  var upcomingList = <LeadData>[].obs;
  var pastList = <LeadData>[].obs;

  getLeadWiseTaskList(String id, String type){
    // isLoading.value = true;
    // EasyLoading.show();
    _provider2
        .leadWiseTask(id, type)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        // EasyLoading.dismiss();
        if(response.data != null ){
          if(type.contains("1")){
            upcomingList.value = response.data!;
          }else{
            pastList.value = response.data!;
          }
        }else{
        }
        // isLoading.value = false;
        // getxSnackbar("", "Successfully", Colors.green);
      }else{
        // EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
        // isLoading.value = false;

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
    if(true){
      getLeadWiseTaskList("1", "1");
      getLeadWiseTaskList("1", "2");
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
