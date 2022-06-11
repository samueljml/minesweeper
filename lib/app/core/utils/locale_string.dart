import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {"title": "Minesweeper", "startGameButtonText": "Start"},
        'pt_BR': {"title": "Campo minado", "startGameButtonText": "Iniciar"},
      };
}
