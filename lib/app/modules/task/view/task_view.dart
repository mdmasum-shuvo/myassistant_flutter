import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/contacts/components/search_text_field.dart';
import 'package:my_assistant/app/modules/task/components/horizontal_list_buttons.dart';
import 'package:my_assistant/app/modules/task/components/weekday.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';
import '../../../theme/custom_appbar.dart';
import '../components/task_item_list.dart';

class TaskView extends GetView<TaskController> {
  TaskView({super.key});

  @override
  final controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar("Task", "", false, true, () {
          controller.isVisibleCalender.value =
              !controller.isVisibleCalender.value;
        }),
        floatingActionButton: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset(
              Assets.add,
              height: 70.h,
              width: 70.w,
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
                      searchTextField(TextEditingController(), "Search Task"),
                ),
                height25(30),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SizedBox(
                      height: 50.h, child: horizontalListButtons(controller)),
                ),
                //TODO: onTap list is not updating

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      height25(40),
                      controller.isVisibleCalender.value?
                      weekDay():Container(),
                      height25(20),
                    ],
                  ),
                ),
                Expanded(child: taskItemList(context))
              ],
            ),
          ),
        ));
  }
}
