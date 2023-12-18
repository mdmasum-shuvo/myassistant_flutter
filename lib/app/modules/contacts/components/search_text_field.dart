import 'package:flutter/cupertino.dart';
import 'package:my_assistant/app/theme/textfield.dart';
import 'package:my_assistant/app/utils/assets.dart';

Widget searchTextField(TextEditingController controller,[String hint = "Search contacts"]){
  return textField(hint, controller, Assets.search );
}