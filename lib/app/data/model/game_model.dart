class GameModel {
  Duration duration = const Duration();
  bool isPaused = false;
  List<List<Field>> fields = [];
}

class Field {
  bool opened = false;
  String text;

  Field(this.text);
}
