import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/leads/components/lead_item_list.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';
import 'package:my_assistant/app/routes/app_pages.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/custom_appbar.dart';
import '../../../utils/assets.dart';
import '../../task/components/weekday.dart';
import '../components/horizontal_list.dart';
import '../components/lead_search.dart';
import '../components/lead_weekday.dart';

class LeadsView extends GetView<LeadsController> {
  LeadsView({super.key});

  @override
  final controller = Get.put(LeadsController());

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async{

        await controller.getLeadList(searchName: "");
      },
      child: Scaffold(
          appBar: mainAppBar("Lead", "", false, true, () {
            controller.isVisibleCalender.value =
                !controller.isVisibleCalender.value;
          }),
          floatingActionButton: InkWell(
              onTap: () {
                Get.toNamed(Routes.CREATE_LEAD);
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
              child: Column(children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 24.w),
                  child: leadSearchTextField(controller.searchController, controller, "Search leads"),
                ),
                height25(30),
                Padding(
                  padding:  EdgeInsets.only(left: 24.w),
                  child: SizedBox(height: 50.h, child: horizontalListButtons(controller)),
                ),
                //TODO: onTap list is not updating
                height25(40),
                controller.isVisibleCalender.value ? Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 0.w),
                  child: leadWeekDay(controller),
                ) : Container(),
                Expanded(child: leadItemList(controller)),
              ]),
            ),
          )),
    );
  }
}
