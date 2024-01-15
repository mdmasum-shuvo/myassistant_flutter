import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/task/components/horizontal_list_buttons.dart';
import 'package:my_assistant/app/modules/task/components/weekday.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/custom_appbar.dart';
import '../components/task_item_list.dart';
import '../components/task_search.dart';

class TaskView extends GetView<TaskController> {
  TaskView({super.key});

  @override
  final controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async{

        await controller.getTaskList();
      },
      child: Scaffold(
          appBar: mainAppBar("Task", "", false, true, () {
            controller.isVisibleCalender.value =
                !controller.isVisibleCalender.value;
            ///---------------------------------------------
            // if(controller.isVisibleCalender.value){
            //   controller.calendarWeekController = CalendarWeekController();
            // }else{
            //   // Get.delete<CalendarWeekController>();
            // }
          }),
          floatingActionButton: InkWell(
              onTap: () {
                Get.toNamed(Routes.CREATE_TASK);
              },
              child: SvgPicture.asset(
                Assets.add,
                height: 80.h,
                width: 80.w,
                fit: BoxFit.fill,
              )),
          body: Obx(
            () => Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Column(
                // padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 30.h),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child:
                        taskSearchTextField(controller.searchTaskController, controller, "Search Task"),
                  ),
                  height25(30),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: SizedBox(
                        height: 50.h, child: horizontalListButtons(controller),),
                  ),

                  Column(
                    children: [
                      height25(40),
                      Obx(() => controller.isVisibleCalender.value
                          ? weekDay(controller)
                          : Container()),
                      height25(20),
                    ],
                  ),
                  controller.filteredList.isEmpty ? text_16_500("No Data") : Expanded(child: taskItemList(context, controller))
                ],
              ),
            ),
          )),
    );
  }
}
