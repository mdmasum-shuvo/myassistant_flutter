import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/task/task_detail.dart';

import '../../../global/status.dart';
import '../../../providers/task_provider.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

class TaskDetailController extends GetxController {
  TextEditingController taskDetailController = TextEditingController();
  final count = 0.obs;

  RxBool isLoading = false.obs;

  RxList<Status> statusList = <Status>[
    Status(name: "Inactive", id: "2", color: const Color(0xFFF44336)),
    Status(name: "New", id: "1", color: const Color(0xFFFBAE10)),
    Status(name: "Completed", id: "3", color: const Color(0xFF4CAF50)),
    Status(name: "N/A", id: "00", color: const Color(0xFFF44336)),
  ].obs;


  // var taskList = <TaskDetail>[].obs;
  TaskData taskData = TaskData();
  final TaskProvider _provider = TaskProvider();

  getTaskList(String id){
    isLoading.value = true;
    EasyLoading.show();
    _provider
        .taskDetail(id)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null){
          taskData = response.data!;
          getStatus(taskData.id.toString());
          taskDetailController.text = taskData.taskDetails ?? "";
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
      getTaskList(ar);
    }

  }

  var s = "N/A".obs;

  void getStatus(String? id){
     s.value = statusList.last.name;
    if(id != null){
      if(id.length == 1){
        List<Status> statusLists = statusList.where((e) => e.id.toLowerCase().contains(id.toLowerCase())).toList();
        if(statusLists.isNotEmpty){
          // return statusLists;
          s.value = statusLists.first.name;
        }else{
          s.value = "N/A";
          // return statusList.last;

        }
      }else{
        var statusLists = statusList.where((e) => e.name.toLowerCase().contains(id.toLowerCase())).toList();
        if(statusLists.isNotEmpty){
          // return statusLists.first;
          s.value = statusLists.first.name;
        }else{
          // return statusList.last;
          s.value = "N/A";
        }
      }
    }else{
      // return statusList.last;
      s.value = "N/A";
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
