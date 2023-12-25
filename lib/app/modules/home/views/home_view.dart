import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/home/components/custom_row_text.dart';
import 'package:my_assistant/app/modules/home/components/dashboard_analysis.dart';
import 'package:my_assistant/app/modules/home/components/documents.dart';
import 'package:my_assistant/app/modules/home/components/lead_pipeline.dart';
import 'package:my_assistant/app/theme/Colors.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/utils/assets.dart';
import 'package:my_assistant/app/utils/success_pop_up.dart';

import '../../../theme/button_theme.dart';
import '../../../theme/custom_appbar.dart';
import '../../../drawer/drawer.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Good Morning", "Masum Talukder", true),
      drawer: MainDrawer(),
      floatingActionButton: GestureDetector(
          onTap: () {
            // Scaffold.of(context).openDrawer();
            openDialog(context);
          },
          child: SvgPicture.asset(
            Assets.add,
            height: 80.h,
            width: 80.w,
            fit: BoxFit.fill,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 22.h),
          child: Column(
            children: [
              leadPipeLine(),
              height25(),
              dashboardAnalysis(),
              height25(),
              documents(),
            ],
          ),
        ),
      ),
    );
  }
}
