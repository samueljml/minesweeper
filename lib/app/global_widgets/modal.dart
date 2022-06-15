import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/core/values/colors.dart';

class Modal {
  static body(Widget body,
      {double width = 375,
      double height = 150,
      EdgeInsetsGeometry padding =
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15)}) {
    Get.dialog(
      Stack(children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Material(
            color: Colors.black12,
            child: GestureDetector(
              onTap: () => Get.back(),
            ),
          ),
        ),
        Center(
          child: Container(
            height: height,
            width: width,
            padding: padding,
            color: secondaryColor,
            child: body,
          ),
        ),
      ]),
    );
  }
}
