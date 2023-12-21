import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../modules/task/components/show_pop_up_menu.dart';
import '../utils/assets.dart';

Widget threeDotVert(BuildContext context, Function(String) onTap){
  return GestureDetector(
      onTapDown: (TapDownDetails t) async{
        String? v = await showPopupMenu(context, t.globalPosition);
        if(v != null){
          onTap(v);
        }
      },
      child: SvgPicture.asset(Assets.ellipsis, height: 24.h, width: 24.w, fit: BoxFit.fill,));
}