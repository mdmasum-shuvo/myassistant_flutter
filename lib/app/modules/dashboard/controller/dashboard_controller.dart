import 'package:get/get.dart';
import 'package:my_assistant/app/modules/contacts/view/contacts_view.dart';
import 'package:my_assistant/app/modules/home/views/home_view.dart';
import 'package:my_assistant/app/modules/leads/view/leads_view.dart';
import 'package:my_assistant/app/modules/task/view/task_view.dart';

class DashboardController extends GetxController{


  var bottomPageList = [
    HomeView(),
    ContactsView(),
    TaskView(),
    LeadsView()
  ].obs;

  var selectedIndex = 0.obs;

  onBottomTap(int v){
    selectedIndex.value = v;
  }
}