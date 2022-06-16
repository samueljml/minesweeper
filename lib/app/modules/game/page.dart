import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global_widgets/mobile_screen.dart';
import '../../global_widgets/modal.dart';
import 'controller.dart';

class Game extends GetView<GameController> {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? fieldsTextStyle = Theme.of(context).textTheme.headline5;

    return MobileScreen(
        child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () => Modal.body(
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "confirmation".tr,
                            style: fieldsTextStyle,
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
                            style: Theme.of(context).textTheme.bodyText2,
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
                            child: Text("no".tr,
                                style: Theme.of(context).textTheme.headline6),
                          ),
                          onPressed: () => Get.back(),
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
                            child: Text("yes".tr,
                                style: Theme.of(context).textTheme.headline6),
                          ),
                          onPressed: () => Get.toNamed("/home"),
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
            ),
          ),
          Wrap(
            spacing: 10,
            children: [
              Center(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.5, top: 1),
                    child:
                        Text("*", style: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ),
              Obx(
                () => Text(
                    controller.homeController.getTextControllers.textBombs.text,
                    style: Theme.of(context).textTheme.headline4),
              ),
              const Icon(
                FontAwesomeIcons.solidClock,
                size: 27,
              ),
              Text("01:02", style: Theme.of(context).textTheme.headline4),
            ],
          )
        ])
      ],
    ));
  }
}
