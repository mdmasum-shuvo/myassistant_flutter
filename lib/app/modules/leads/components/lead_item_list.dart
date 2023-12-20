import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/leads/components/lead_item_card.dart';

Widget leadItemList(){
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
    return leadItemCard();
  },);
}