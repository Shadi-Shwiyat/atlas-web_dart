double calculateArea(double height, double base) {
  double area = height * (base / 2);
  String roundedAreaString = area.toStringAsFixed(2);
  double roundedArea = double.parse(roundedAreaString);
  return roundedArea;
}