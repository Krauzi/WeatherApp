import 'dart:ui';

List<Color> colorPalette(int id, String icon) {
  if (id < 300 || id > 800) {
    return [Color.fromRGBO(34, 52, 57, 1), Color.fromRGBO(48, 82, 81, 0.9), Color.fromRGBO(42, 64, 70, 0.9)];
  }
  else if (id < 600) {
    return [Color.fromRGBO(78,104,126, 1), Color.fromRGBO(60,86,100, 0.9), Color.fromRGBO(63,95,113, 0.9)];
  }
  else if (id < 700) {
    return [Color.fromRGBO(138,149,176, 1), Color.fromRGBO(103,101,131, 0.9), Color.fromRGBO(120,131,155, 0.9)];
  }
  else if (id == 800) {
    if (icon == "01d")
      return [Color.fromRGBO(17,131,242, 1), Color.fromRGBO(30,113,196, 0.9), Color.fromRGBO(22,123,222, 0.9)];
    else {
      return [Color.fromRGBO(39, 59, 81, 1), Color.fromRGBO(26,44,64, 0.9), Color.fromRGBO(33,51,71, 0.9)];
    }
  }
  else {
    return [Color.fromRGBO(34, 52, 57, 1), Color.fromRGBO(48, 82, 81, 0.9), Color.fromRGBO(42, 64, 70, 0.9)];
  }
}