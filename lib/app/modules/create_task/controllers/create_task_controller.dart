import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_list_model.dart';
import 'package:my_assistant/app/modules/create_task/compoent/task_status_model.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';
import 'package:my_assistant/app/providers/task_provider.dart';

import '../../../global/sucess_alert.dart';
import '../../../models/lead/lead_list_model.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';
import '../../contacts/controller/contacts_controller.dart';

class CreateTaskController extends GetxController {

  Rx<TimeOfDay> selectedStartTime = TimeOfDay.now().obs;

  final taskTitleController =TextEditingController(text: "");
  final taskDescriptionController =TextEditingController(text: "");
  final count = 0.obs;
  final RxString text="".obs;
  
  var taskStatusList = <TaskStatus>[
    TaskStatus(name: "Pending", id: "1"),
    TaskStatus(name: "Upcoming", id: "2"),
    TaskStatus(name: "Confirm", id: "3"),
  ].obs;

  var selectedTaskStatus = TaskStatus(name: 'Pending', id: "1").obs;

  /// Lead list
  Rx<LeadsController>? leadController;
  // var leadList = <Lead>[].obs;
  Rx<Lead>? selectedLead;

  /// contact list
  Rx<ContactsController>? contactController;
  Rx<ContactData>? selectedContact;

  @override
  void onInit() {
    super.onInit();
    leadController = Get.find<LeadsController>().obs;
    contactController = Get.find<ContactsController>().obs;
  }

  final TaskProvider _provider = TaskProvider();

  create(BuildContext context){
    var body = {
      'activity_type_id' : "1",
      'assing_to' : selectedContact?.value.id.toString(),
      'lead_list_id' : selectedLead?.value.id.toString(),
      'task_titile' : taskTitleController.text,
      'task_details' : taskDescriptionController.text,
      'status' : selectedTaskStatus.value.id.toString(),
      'due_date' : '2023-12-31',
      'set_remainder' : '2023-12-19 22:53:16',
    };
    EasyLoading.show();
    _provider.taskCreate(body).then((response) async{
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
         showCustomDialog(context, title: "Task Added", body: "Task has Added successfully, Check it out in home screen", btnName: "Done");

        // getxSnackbar("", "Login Successfully", Colors.green);

      }else{
        EasyLoading.dismiss();
        getxSnackbar("", response.message ?? "", red);

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
