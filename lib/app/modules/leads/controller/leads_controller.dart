import 'package:flutter/cupertino.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/lead/lead_list_model.dart';
import 'package:my_assistant/app/providers/lead_provider.dart';

import '../../../global/status.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';
import '../../task/components/buttons.dart';

class LeadsController extends GetxController{

  TextEditingController searchController = TextEditingController();
  CalendarWeekController calendarWeekController = CalendarWeekController();
  var horizontalButtonList = <Buttons>[
    Buttons(name: "All", isSelected: true.obs),
    Buttons(name: "New", isSelected: false.obs),
    Buttons(name: "Confirmed", isSelected: false.obs),
    Buttons(name: "Inactive", isSelected: false.obs),
  ].obs;
  RxBool isVisibleCalender = true.obs;

  // changeItems(int index,){
  //   for(var i = 0; i < horizontalButtonList.length; i++){
  //     if(i == index){
  //       horizontalButtonList[i].isSelected = true.obs;
  //       debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");
  //
  //     }else{
  //       horizontalButtonList[i].isSelected = false.obs;
  //       debugPrint("${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");
  //
  //     }
  //   }
  // }

  changeItems(
      int index,
      ) {
    for (var i = 0; i < horizontalButtonList.length; i++) {
      if (i == index) {
        horizontalButtonList[i].isSelected = true.obs;
        debugPrint(
            "${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");
        if(horizontalButtonList[i].name.toLowerCase() == "all"){
          filteredList.value = leadList.value;
        }else{
          searchAndFilterLead(status: horizontalButtonList[i].name);
        }
      } else {
        horizontalButtonList[i].isSelected = false.obs;
        debugPrint(
            "--${horizontalButtonList[i].name} ${horizontalButtonList[i].isSelected}");
      }
    }
    debugPrint("");
  }

  RxBool isLoading = false.obs;

  RxList<Status> statusList = <Status>[
    Status(name: "Inactive", id: "2", color: const Color(0xFFF44336)),
    Status(name: "New", id: "1", color: const Color(0xFFFBAE10)),
    Status(name: "Confirmed", id: "3", color: const Color(0xFF4CAF50)),
    Status(name: "N/A", id: "00", color: const Color(0xFFF44336)),
  ].obs;


  var leadList = <Lead>[].obs;
  var filteredList = <Lead>[].obs;
  final LeadProvider _provider = LeadProvider();

  getLeadList({String searchName = "", String status = "1"}){
    isLoading.value = true;
    debugPrint("\n\n\n---------------->> Enter leadList");
    EasyLoading.show();
    _provider
        .leadList(searchName: searchName, status: status)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null && response.data!.data != null){
          leadList.value = response.data!.data!;
          filteredList.value = response.data!.data!;
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
    getLeadList();
  }


  var searchQuery = "".obs;
  Rx<DateTime?>? date;
  var statusId = "".obs;

  // Method to search and filter taskList
  searchAndFilterLead(
      {String? query, DateTime? dateTime, String? status}) {
    filteredList.value = leadList;
    searchQuery.value = query ?? "";
    date = dateTime.obs;
    statusId.value = status?.toLowerCase() ?? "";

    // Filter by search query (firstName, lastName, or taskTitile)
    if (searchQuery.value != null && searchQuery.value.isNotEmpty) {
      String query = searchQuery.value.toLowerCase();
      filteredList.value = filteredList.where((lead) =>
      lead.firstName!.toLowerCase().contains(query) ||
          lead.lastName!.toLowerCase().contains(query) ||
          lead.projectName!.toLowerCase().contains(query)).toList();
    }

    // Filter by date
    if (date?.value != null) {
      debugPrint("Enter date and date is: ${date!.value} and length is: ${filteredList.length}");

      filteredList.value = filteredList.where((task) {
        DateTime? taskDate = DateTime.tryParse(task.createdAt ?? '');

        if (taskDate != null) {
          // Extract date part without time
          DateTime taskDateOnly = DateTime(taskDate.year, taskDate.month, taskDate.day);

          // Compare only the date part
          return taskDateOnly.isAtSameMomentAs(DateTime(date!.value!.year, date!.value!.month, date!.value!.day));
        }

        return false;
      }).toList();

      debugPrint("Data length: ${filteredList.length}");
    }

    // Filter by status
    if (statusId.value != null && statusId.value.isNotEmpty) {
      filteredList.value = filteredList
          .where((task) => task.leadStatus?.toLowerCase() == statusId.value.toLowerCase())
          .toList();
    }

    // return filteredList;
  }

  Status getStatus(String? id){
    Status s = statusList.last;
    if(id != null){
      if(id.length == 1){
        List<Status> statusLists = statusList.where((e) => e.id.toLowerCase().contains(id.toLowerCase())).toList();
        if(statusLists.isNotEmpty){
          // return statusLists;
          s = statusLists.first;
        }else{
          // return statusList.last;

        }
      }else{
        var statusLists = statusList.where((e) => e.name.toLowerCase().contains(id.toLowerCase())).toList();
        if(statusLists.isNotEmpty){
          // return statusLists.first;
          s = statusLists.first;
        }else{
          // return statusList.last;
        }
      }
    }else{
      // return statusList.last;
    }
    return s;
  }



}