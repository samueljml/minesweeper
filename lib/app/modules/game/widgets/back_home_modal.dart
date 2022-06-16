import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/text_styles.dart';
import '../../../global_widgets/modal.dart';

class BackHomeModal {
  static show(void Function() onClose) => Modal.body(
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "confirmation".tr,
                      style: TextStyles.defaultStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "backToHomeScreen".tr,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.bodyText,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  height: 40,
                  width: 80,
                  child: OutlinedButton(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text("no".tr, style: TextStyles.button),
                    ),
                    onPressed: () {
                      onClose();
                      Get.back();
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(width: 3)),
                  height: 40,
                  width: 80,
                  child: OutlinedButton(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text("yes".tr, style: TextStyles.button),
                    ),
                    onPressed: () => Get.offAllNamed("/home"),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        onClose: onClose,
      );
}
