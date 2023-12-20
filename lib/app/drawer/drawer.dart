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
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: primaryDarkColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Center(child: SvgPicture.asset(Assets.logoWhite)),
            ),
          ),
          Column(
            children: [
              drawerItem(
                  Get.currentRoute == Routes.PROFILE
                      ? drawerItemColor
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
                Get.toNamed(Routes.PROFILE);
              }),
              drawerItem(
                  Get.currentRoute == Routes.LEADS
                      ? drawerItemColor
                      : primaryDarkColor,
                  Assets.allLeads,
                  "Leads", () {
                Get.toNamed(Routes.PROFILE);
              }),
              drawerItem(
                  Get.currentRoute == Routes.PROFILE
                      ? drawerItemColor
                      : primaryDarkColor,
                  Assets.logout,
                  "Log out", () {
                Get.toNamed(Routes.PROFILE);
              }),
            ],
          )
        ],
      ),
    );
  }
}
