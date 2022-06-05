import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:minesweeper/app/core/values/colors.dart';

const double minWidth = 500;
const double minHeight = 700;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    TextEditingController textBombs = TextEditingController(text: "10");
    TextEditingController textWidth = TextEditingController(text: "10");
    TextEditingController textHeight = TextEditingController(text: "10");

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
              Container(
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(width: 4)),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(right: BorderSide(width: 4))),
                      padding: const EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text("*",
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: textBombs,
                          keyboardType: TextInputType.number,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .merge(const TextStyle(fontSize: 20)),
                          cursorColor: Colors.black,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(width: 4)),
                      height: 55,
                      child: TextFormField(
                        controller: textWidth,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .merge(const TextStyle(fontSize: 20)),
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
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .merge(const TextStyle(fontSize: 20)),
                    )),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(width: 4)),
                      height: 55,
                      child: TextFormField(
                        controller: textHeight,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .merge(const TextStyle(fontSize: 20)),
                        cursorColor: Colors.black,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
