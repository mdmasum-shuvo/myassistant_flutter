import 'package:flutter/cupertino.dart';
import 'package:my_assistant/app/modules/contacts/controller/contacts_controller.dart';
import 'package:my_assistant/app/modules/leads/controller/leads_controller.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget leadSearchTextField(TextEditingController txtController, LeadsController controller,   [String hint = "Search contacts"]){
  return textField(hint, txtController, Assets.search, onChanged: (v) {
    controller.searchAndFilterLead(query: v);
  }, );
}