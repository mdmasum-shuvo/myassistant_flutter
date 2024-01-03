import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import '../routes/app_pages.dart';
import '../utils/assets.dart';
import '../theme/colors.dart';
import 'component/drawer_item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryDarkColor,
      shadowColor: primaryDarkColor,
      surfaceTintColor: primaryDarkColor,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 190.h,
                  decoration: const BoxDecoration(
                    color: primaryDarkColor,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                      child: SvgPicture.asset(Assets.logoWhite)),
                ),
                drawerItem(
                    Get.currentRoute == Routes.PROFILE
                        ? primaryDarkColor
                        : primaryDarkColor,
                    Assets.profileIcon,
                    "Profile", () {
                  Scaffold.of(context).closeDrawer();
        
                  Get.toNamed(Routes.PROFILE);
                }),
                drawerItem(
                    Get.currentRoute == Routes.CONTACTS
                        ? drawerItemColor
                        : primaryDarkColor,
                    Assets.callWhite,
                    "Contacts", () {
                  Scaffold.of(context).closeDrawer();
        
                  Get.toNamed(Routes.CONTACTS);
                }),
                drawerItem(
                    Get.currentRoute == Routes.LEADS
                        ? drawerItemColor
                        : primaryDarkColor,
                    Assets.allLeads,
                    "Leads", () {
                  Scaffold.of(context).closeDrawer();
        
                  Get.toNamed(Routes.LEADS);
                }),
                drawerItem(
                    Get.currentRoute == Routes.PROFILE
                        ? drawerItemColor
                        : primaryDarkColor,
                    Assets.logout,
                    "Log out", () {
                  Scaffold.of(context).closeDrawer();
        
                  Get.offAllNamed(Routes.WELCOME);
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
