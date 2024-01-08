
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

import '../../../models/contacts/contact_list_model.dart';
import 'contacts_card.dart';

Widget contactsBody(Map<String, RxList<ContactData>> sortedContactLists, String test){
  return sortedContactLists.keys.isNotEmpty ? Expanded(child: ListView.builder(
    itemCount: sortedContactLists.keys.length,
    itemBuilder: (context, index) {
      String letter = sortedContactLists.keys.elementAt(index);
      RxList<ContactData> contacts = sortedContactLists[letter]!;
      return contactsCard(letter, contacts);
    },
  )) : text_18_800("No Data");
}