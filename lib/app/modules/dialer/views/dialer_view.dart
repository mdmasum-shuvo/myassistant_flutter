import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_assistant/app/modules/common/header.dart';
import 'package:my_assistant/app/theme/custom_appbar.dart';

import '../../../theme/textfield.dart';
import '../controllers/dialer_controller.dart';
import 'component/dialer_item.dart';

class DialerView extends GetView<DialerController> {
  const DialerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: secondaryAppBarDialer(context, "", (v) => debugPrint(v)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldDialer("4077", controller.textCOntroller),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [header("Suggestion", ""), dialerItem(""),dialerItem(""),dialerItem(""),dialerItem(""),],
              ),
            ),
          )
        ],
      ),
    );
  }
}
