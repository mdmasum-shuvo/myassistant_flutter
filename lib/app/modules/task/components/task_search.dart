import 'package:flutter/cupertino.dart';
import 'package:my_assistant/app/modules/contacts/controller/contacts_controller.dart';
import 'package:my_assistant/app/modules/task/controller/task_controller.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget taskSearchTextField(TextEditingController txtController, TaskController controller,  [String hint = "Search contacts"]){
  return textField(hint, txtController, Assets.search, onChanged: (v) {
    controller.searchAndFilterTasks(query: v);
  }, );
}