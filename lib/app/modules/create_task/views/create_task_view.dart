import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_task_controller.dart';

class CreateTaskView extends GetView<CreateTaskController> {
  const CreateTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateTaskView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateTaskView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
