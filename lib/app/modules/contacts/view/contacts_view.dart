import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/custom_appbar.dart';
import '../controller/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar("Contact","",false),
      body: Center(child: Text("Working"),),
    );
  }
}
