import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Working"),),
    );
  }
}
