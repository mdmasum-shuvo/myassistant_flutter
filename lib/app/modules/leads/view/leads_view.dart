import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/leads/components/lead_item_card.dart';
import 'package:my_assistant/app/modules/leads/components/lead_item_list.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';

import '../../../theme/const_sizing.dart';
import '../../../theme/custom_appbar.dart';
import '../../../utils/assets.dart';
import '../../contacts/components/search_text_field.dart';
import '../components/horizontal_list.dart';

class LeadsView extends GetView<LeadsController> {
  LeadsView({super.key});

  @override
  final controller = Get.put(LeadsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Lead","",false),
        floatingActionButton: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: SvgPicture.asset(Assets.add, height: 70.h, width: 70.w, fit: BoxFit.fill,)),
      body: Obx(() => Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
            children: [
              searchTextField(TextEditingController(), "Search leads"),
              height25(30),
              SizedBox(
                  height: 50.h,
                  child: horizontalListButtons( controller)), //TODO: onTap list is not updating
              height25(40),
              Expanded(child: leadItemList()),
            ]
        ),
      ),)
    );
  }
}
