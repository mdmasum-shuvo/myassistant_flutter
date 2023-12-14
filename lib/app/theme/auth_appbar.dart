import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar authAppbar([bool visibleLeading = true]){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: visibleLeading ? IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back, color: Colors.black,)) : null,
  );
}