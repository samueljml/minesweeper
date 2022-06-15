import 'package:get/get.dart';

import '../../data/model/text_controllers_model.dart';

class HomeController extends GetxController {
  final Rx<TextControllers> _textControllers = TextControllers().obs;

  TextControllers get getTextControllers => _textControllers.value;
}
