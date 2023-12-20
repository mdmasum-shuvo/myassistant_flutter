import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lead_detail_controller.dart';

class LeadDetailView extends GetView<LeadDetailController> {
  const LeadDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeadDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LeadDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
