import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/modules/contacts/components/contacts_body.dart';
import 'package:my_assistant/app/modules/contacts/components/search_text_field.dart';
import 'package:my_assistant/app/routes/app_pages.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';
import 'package:my_assistant/app/utils/assets.dart';

import '../../../global/debouncher.dart';
import '../../../theme/custom_appbar.dart';
import '../controller/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {
  ContactsView({super.key});

  @override
  final controller = Get.put(ContactsController());
  @override
  Widget build(BuildContext context) {
    final _debouncer = Debouncer<String>();

    return RefreshIndicator(
      onRefresh: () async{

        await controller.getContactList("");
      },
      child: Scaffold(
        appBar: mainAppBar("Contact","",false),
        floatingActionButton: InkWell(
            onTap: () {
              Get.toNamed(Routes.DIALER);

            },
            child: SvgPicture.asset(Assets.dialer, height: 80.h, width: 80.w, fit: BoxFit.fill,)),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 30.h),
          child: Column(
            children: [
              searchTextField(controller.searchController,  (v) {
                // Debounce the text input
                _debouncer.run(() {
                  controller.getContactList(v);
                  return "";
                });
              } ,),
              height25(40),
              Obx(() => controller.isLoading.value ? text_18_800("Loading...") : contactsBody(controller.sortedContactLists.value, controller.title.value)),

            ],
          ),
        ),
      ),
    );
  }
}
