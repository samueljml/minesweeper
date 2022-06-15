import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "title": "Minesweeper",
          "startGameButtonText": "Start",
          "confirmation": "Confirmation",
          "backToHomeScreen": "Go back to home screen?",
          "no": "No",
          "yes": "Yes"
        },
        'pt_BR': {
          "title": "Campo minado",
          "startGameButtonText": "Iniciar",
          "confirmation": "Confirmacao",
          "backToHomeScreen": "Deseja voltar a tela inicial?",
          "no": "Nao",
          "yes": "Sim"
        },
      };
}
