import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';

import '../../../theme/custom_appbar.dart';

class LeadsView extends GetView<LeadsController> {
  const LeadsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Lead","",false),

      body: Center(
        child: Text("Working"),
      ),
    );
  }
}
