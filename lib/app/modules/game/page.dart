import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global_widgets/mobile_screen.dart';
import 'controller.dart';
import 'widgets/back_home_modal.dart';

class Game extends GetView<GameController> {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileScreen(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.arrowLeft),
              onPressed: () {
                controller.togglePauseGame();
                BackHomeModal.show(controller.togglePauseGame);
              },
            ),
            Wrap(
              spacing: 15,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.bomb,
                  size: 23,
                ),
                Obx(
                  () => Text(controller.getBombs,
                      style: Theme.of(context).textTheme.headline4),
                ),
                const Icon(
                  FontAwesomeIcons.solidClock,
                  size: 23,
                ),
                SizedBox(
                  width: 104,
                  child: Obx(
                    () => Text(controller.getTimer,
                        style: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ],
            )
          ],
        ),
        Obx(
          () => Expanded(
            child: Center(
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 3)),
                child: InteractiveViewer(
                  child: GridView.count(
                    crossAxisCount: controller.getHeight,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisSpacing: 0,
                    children: [
                      for (final row in controller.getFields)
                        for (final field in row)
                          InkWell(
                            onTap: () {
                              field.opened = true;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Visibility(
                                visible: field.opened,
                                child: Center(
                                  child: Text(
                                    field.text,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
