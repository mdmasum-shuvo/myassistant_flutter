import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/providers/lead_provider.dart';

import '../../../global/sucess_alert.dart';
import '../../../models/contacts/contact_list_model.dart';
import '../../../models/lead/lead_list_model.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';
import '../../contacts/controller/contacts_controller.dart';
import '../../create_task/compoent/task_status_model.dart';
import '../../leads/controller/leads_controller.dart';

class CreateLeadController extends GetxController {
  //TODO: Implement CreateLeadController
  final firstNameController = TextEditingController(text: "");
  final lastNameController = TextEditingController(text: "");
  final mobileController = TextEditingController(text: "");
  final emailController = TextEditingController(text: "");
  final count = 0.obs;
  final RxString text = "".obs;
  RxBool isCircle=false.obs;
  var title = "Write Lead information".obs;

  var taskStatusList = <TaskStatus>[
    TaskStatus(name: "New", id: "1"),
    TaskStatus(name: "Inactive", id: "3"),
    TaskStatus(name: "Confirm", id: "2"),
  ].obs;

  var selectedTaskStatus = TaskStatus(name: 'New', id: "1").obs;

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

  final LeadProvider _provider = LeadProvider();

  create(BuildContext context){
    var body = {
      'first_name' : firstNameController.text,
      'last_name' : lastNameController.text,
      'pick_from_contact_id' : selectedContact?.value.id.toString(),

      'email' : emailController.text,
      'phone_number' : mobileController.text,
      'assign_executive_id' : '1',
      'source_id' : '1',
      'channel_partner_id' : '1',
      'project_name' : '1',
      'status' : selectedTaskStatus.value.id.toString(),
    };
    EasyLoading.show();
    _provider.leadCreate(body).then((response) async{
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        showCustomDialog(context, title: "Lead Added", body: "Lead has Added successfully, Check it out in home screen", btnName: "Done");

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
