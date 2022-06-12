import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/global_widgets/mobile_screen.dart';

import '../../global_widgets/modal.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? fieldsTextStyle = Theme.of(context).textTheme.headline5;

    return MobileScreen(
        child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          IconButton(
              icon: const Icon(FontAwesomeIcons.arrowLeft),
              onPressed: () => Modal.body(Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Confirmacao",
                                style: fieldsTextStyle,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Deseja voltar a tela inicial?",
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
                            decoration:
                                BoxDecoration(border: Border.all(width: 4)),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            child: TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text("nao",
                                    style:
                                        Theme.of(context).textTheme.headline6),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              decoration:
                                  BoxDecoration(border: Border.all(width: 4)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              child: TextButton(
                                onPressed: () {
                                  Get.toNamed("/home");
                                },
                                child: Text("sim",
                                    style:
                                        Theme.of(context).textTheme.headline6),
                              )),
                        ],
                      )
                    ],
                  ))
              // Get.toNamed("/home")

              ),
        ])
      ],
    ));
  }
}
