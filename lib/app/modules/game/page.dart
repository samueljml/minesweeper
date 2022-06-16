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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              controller.togglePauseGame();
              BackHomeModal.show(controller.togglePauseGame);
            },
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
                () => Text(controller.getBombs,
                    style: Theme.of(context).textTheme.headline4),
              ),
              const Icon(
                FontAwesomeIcons.solidClock,
                size: 27,
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
        ])
      ],
    ));
  }
}
