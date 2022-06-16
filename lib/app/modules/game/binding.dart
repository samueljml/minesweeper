import 'package:get/get.dart';
import 'package:minesweeper/app/modules/home/controller.dart';

import 'controller.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(), permanent: true);
    Get.lazyPut<GameController>(
        () => GameController(homeController: Get.find<HomeController>()),
        fenix: false);
  }
}
