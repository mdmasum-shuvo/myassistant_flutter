import 'package:flutter/cupertino.dart';
import 'package:my_assistant/app/modules/contacts/controller/contacts_controller.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget leadSearchTextField(TextEditingController controller,  [String hint = "Search contacts"]){
  return textField(hint, controller, Assets.search, );
}