import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_assistant/app/modules/dashboard/controller/dashboard_controller.dart';

import '../../../theme/Colors.dart';
import '../../../utils/assets.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: controller.bottomPageList[controller.selectedIndex.value],
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        backgroundColor: primaryColor,
        elevation: 5,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: white,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: white,
        ),
        onTap: controller.onBottomTap,
        currentIndex: controller.selectedIndex.value,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.home), backgroundColor: primaryColor, label: "Home",),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.call), backgroundColor: primaryColor, label: "Contacts",),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.task), backgroundColor: primaryColor, label: "Task",),
          BottomNavigationBarItem(icon: SvgPicture.asset(Assets.leads), backgroundColor: primaryColor, label: "Leads",),
        ],

      )),
    ));
  }
}
