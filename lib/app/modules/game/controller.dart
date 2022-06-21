import 'dart:async';

import 'package:get/get.dart';

import '../../data/model/game_model.dart';
import '../home/controller.dart';

class GameController extends GetxController {
  final HomeController homeController;
  final Rx<GameModel> _game = GameModel().obs;

  @override
  onReady() async {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (!_game.value.isPaused) {
        _game.update((_game) {
          _game!.duration += const Duration(seconds: 1);
        });
      }
    });

    List<List<Field>> list = [];
    for (int i = 0; i < 10; i++) {
      List<Field> row = [];
      for (int j = 0; j < 10; j++) {
        row.add(Field("*"));
      }
      list.add(row);
    }

    _game.update((_game) {
      _game!.fields = list;
    });

    super.onReady();
  }

  GameController({required this.homeController});

  String get getTimer {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String minutes = twoDigits(_game.value.duration.inMinutes.remainder(60));
    String seconds = twoDigits(_game.value.duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  List<List<Field>> get getFields => _game.value.fields;

  String get getBombs => homeController.getTextControllers.textBombs.text;
  int get getWidth =>
      int.parse(homeController.getTextControllers.textWidth.text);
  int get getHeight =>
      int.parse(homeController.getTextControllers.textHeight.text);

  void togglePauseGame() => _game.update((_game) {
        _game!.isPaused = !_game.isPaused;
      });
}
