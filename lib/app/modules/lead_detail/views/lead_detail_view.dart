import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/forget_password/components/header.dart';
import 'package:my_assistant/app/modules/lead_detail/component/header.dart';
import 'package:my_assistant/app/modules/lead_detail/component/timeline.dart';
import 'package:my_assistant/app/theme/button_theme.dart';
import 'package:my_assistant/app/theme/colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/custom_appbar.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../controllers/lead_detail_controller.dart';

class LeadDetailView extends GetView<LeadDetailController> {
  const LeadDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: secondaryAppBar(context, "Lead Details", (v) => debugPrint(v)),
        body: Obx(
          () => Padding(
            padding: EdgeInsets.only(top: 43.0.h, left: 24.w, right: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leadDetailHeader(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    primaryButton(
                        "Timeline",
                        () => controller.isTimeLineView.value = true,
                        controller.isTimeLineView.value ? textBlack : white,
                        controller.isTimeLineView.value ? white : textBlack,
                        null,
                        50,
                        controller.isTimeLineView.value
                            ? Colors.transparent
                            : primaryColor),
                    Gap(10.w),
                    primaryButton(
                        "Details",
                        () => controller.isTimeLineView.value = false,
                        controller.isTimeLineView.value ? white : textBlack,
                        controller.isTimeLineView.value ? textBlack : white,
                        null,
                        50,
                        controller.isTimeLineView.value
                            ? primaryColor
                            : Colors.transparent),
                  ],
                ),
                height25(43),
                getView(controller.isTimeLineView.value),
              ],
            ),
          ),
        ));
  }

  Widget getView(bool v) {
    if (v) {
      return Expanded(child: timeline());
    } else {
      return Card();
    }
  }
}
