import 'package:flutter/material.dart';
import 'package:my_assistant/app/models/lead/lead_list_model.dart';
import 'package:my_assistant/app/modules/leads/components/lead_item_card.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';

import '../../../global/status.dart';

Widget leadItemList(LeadsController controller){
  return ListView.builder(
    itemCount: controller.filteredList.length,
    itemBuilder: (context, index) {
      Lead data = controller.filteredList[index];
      Status status = controller.getStatus("${data.status ?? "0"}");
    return leadItemCard(controller, data, status, index + 1);
  },);
}