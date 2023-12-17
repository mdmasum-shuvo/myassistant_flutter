
import 'package:flutter/material.dart';

import '../../../theme/text_theme.dart';

Widget header(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text_26_500_inter("Welcome to DoorTracker"),
      text_16_400_inter("Let’s get started. Share your info to join the marketplace", const Color(0xFF5E6165)),

    ],
  );
}