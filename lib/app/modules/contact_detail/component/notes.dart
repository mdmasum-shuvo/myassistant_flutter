import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/contact_detail/component/note_item.dart';
import 'package:my_assistant/app/modules/contact_detail/component/note_item_with_radio.dart';
import 'package:my_assistant/app/modules/contact_detail/controllers/contact_detail_controller.dart';

Widget notes(ContactDetailController controller){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      noteItem("Notes", "+  Create Note", () { }),
      noteItem("Files", "+  Add Files", () { }),
      taskCard(controller, "Task", "+  Create Task", () { }),

    ],
  );
}