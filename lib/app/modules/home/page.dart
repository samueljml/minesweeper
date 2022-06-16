import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/modules/home/controller.dart';

import '../../data/services/language.dart';
import '../../global_widgets/mobile_screen.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? fieldsTextStyle = Theme.of(context).textTheme.headline5;
    const double fieldsPadding = 10;
    const double widgetsHeight = 55;
    const BorderSide borderSide = BorderSide(width: 4);

    return MobileScreen(
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => LanguageService.to.toggleLanguage(),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(width: 4)),
                  padding: const EdgeInsets.all(fieldsPadding),
                  width: widgetsHeight,
                  height: widgetsHeight,
                  child: Obx(
                    () => Center(
                      child: Text(LanguageService.to.getSelectedLanguage,
                          style: fieldsTextStyle!
                              .merge(const TextStyle(fontSize: 11))),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 20,
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text('title'.tr,
                            style: Theme.of(context).textTheme.headline1),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              decoration:
                                  BoxDecoration(border: Border.all(width: 4)),
                              padding: const EdgeInsets.all(fieldsPadding),
                              width: widgetsHeight,
                              height: widgetsHeight,
                              child: Row(
                                children: [
                                  Center(
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4.5, top: 5),
                                        child: Text("*",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: widgetsHeight,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: fieldsPadding),
                                decoration: const BoxDecoration(
                                  border: Border(
                                      top: borderSide,
                                      right: borderSide,
                                      bottom: borderSide),
                                ),
                                child: Obx(
                                  () => TextFormField(
                                    controller:
                                        controller.getTextControllers.textBombs,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(6)
                                    ],
                                    style: fieldsTextStyle,
                                    cursorColor: Colors.black,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: fieldsPadding),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 4)),
                              height: widgetsHeight,
                              child: Obx(
                                () => TextFormField(
                                  controller:
                                      controller.getTextControllers.textWidth,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(3)
                                  ],
                                  style: fieldsTextStyle,
                                  cursorColor: Colors.black,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Center(
                                child: Text(
                              "x",
                              style: fieldsTextStyle,
                            )),
                          ),
                          Flexible(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: fieldsPadding),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 4)),
                              height: widgetsHeight,
                              child: TextFormField(
                                controller:
                                    controller.getTextControllers.textHeight,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(3)
                                ],
                                style: fieldsTextStyle,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        height: widgetsHeight,
                        decoration: BoxDecoration(border: Border.all(width: 4)),
                        width: double.infinity,
                        child: OutlinedButton(
                          child: Text(
                            'startGameButtonText'.tr.toUpperCase(),
                            style: fieldsTextStyle,
                          ),
                          onPressed: () {
                            Get.toNamed('/game');
                          },
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.zero)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
