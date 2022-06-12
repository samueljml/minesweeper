import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/core/values/colors.dart';
import 'package:minesweeper/app/modules/home/controller.dart';

import '../../data/services/language.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textBombs = TextEditingController(text: "10");
    TextEditingController textWidth = TextEditingController(text: "10");
    TextEditingController textHeight = TextEditingController(text: "10");
    final TextStyle? fieldsTextStyle = Theme.of(context).textTheme.headline5;
    const double fieldsPadding = 10;
    const double widgetsHeight = 55;
    const BorderSide borderSide = BorderSide(width: 4);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: secondaryColor,
          )),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: secondaryColor),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      LanguageService.to.toggleLanguage();
                    },
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
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 4)),
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
                                    child: TextFormField(
                                      controller: textBombs,
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
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 4)),
                                  height: widgetsHeight,
                                  child: TextFormField(
                                    controller: textWidth,
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
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 4)),
                                  height: widgetsHeight,
                                  child: TextFormField(
                                    controller: textHeight,
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
                            decoration:
                                BoxDecoration(border: Border.all(width: 4)),
                            width: double.infinity,
                            child: OutlinedButton(
                              child: Text(
                                'startGameButtonText'.tr.toUpperCase(),
                                style: fieldsTextStyle,
                              ),
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                primary: Colors.black,
                                onSurface: Colors.red,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.zero)),
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
        ),
      ),
    );
  }
}
