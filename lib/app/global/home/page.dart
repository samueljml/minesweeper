import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:minesweeper/app/core/values/colors.dart';
import 'package:minesweeper/app/global/home/controller.dart';

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: secondaryColor),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 20,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Text(AppLocalizations.of(context)!.title,
                    style: Theme.of(context).textTheme.headline1),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all(width: 4)),
                      padding: const EdgeInsets.all(fieldsPadding),
                      width: widgetsHeight,
                      height: widgetsHeight,
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text("*",
                              style: Theme.of(context).textTheme.headline2),
                        ),
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
                          decoration:
                              const InputDecoration(border: InputBorder.none),
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: fieldsPadding),
                      decoration: BoxDecoration(border: Border.all(width: 4)),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: fieldsPadding),
                      decoration: BoxDecoration(border: Border.all(width: 4)),
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
                        decoration:
                            const InputDecoration(border: InputBorder.none),
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
                    AppLocalizations.of(context)!
                        .startGameButtonText
                        .toUpperCase(),
                    style: fieldsTextStyle,
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    onSurface: Colors.red,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
