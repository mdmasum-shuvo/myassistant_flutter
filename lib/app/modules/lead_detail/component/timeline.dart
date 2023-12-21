
import 'package:flutter/material.dart';
import 'package:my_assistant/app/modules/lead_detail/component/timeline_card.dart';
import 'package:my_assistant/app/theme/const_sizing.dart';
import 'package:my_assistant/app/theme/text_theme.dart';

Widget timeline(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_24_500_inter("Upcoming"),
      height25(20),
      Expanded(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return timelineCard();
        },),
      ),
      height25(20),
      text_24_500_inter("Past"),
      height25(20),
      Expanded(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return timelineCard();
          },),
      ),
    ],
  );
}