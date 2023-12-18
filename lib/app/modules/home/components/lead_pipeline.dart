import 'package:flutter/cupertino.dart';
import 'package:my_assistant/app/modules/home/components/lead_pipeline_card.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';

import 'custom_row_text.dart';

Widget leadPipeLine(){
  return Column(
    children: [
      customRowText("Lead Pipeline", "View all", () { }),
      height25(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadPipelineCard("Open", "13 Leads"),
          leadPipelineCard("Booked", "18 Leads"),
          leadPipelineCard("Inactive", "19 Leads"),
        ],
      )
    ],
  );
}