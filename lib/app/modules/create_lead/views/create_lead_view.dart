import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_lead_controller.dart';

class CreateLeadView extends GetView<CreateLeadController> {
  const CreateLeadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateLeadView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateLeadView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
