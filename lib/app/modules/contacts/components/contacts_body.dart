
import 'package:flutter/material.dart';

import 'contacts_card.dart';

Widget contactsBody(){
  return Expanded(child: ListView(
    children: [
      contactsCard("A"),
      contactsCard("B"),
      contactsCard("C"),
      contactsCard("D"),
    ],
  ));
}