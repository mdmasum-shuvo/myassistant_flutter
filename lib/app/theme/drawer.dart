
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import '../routes/app_pages.dart';
import '../utils/assets.dart';
import 'colors.dart';

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

        ],
      ),
    );
  }
}
