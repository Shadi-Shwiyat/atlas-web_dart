List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];

  for (double temp in temperaturesInC) {
    double fahrenheit = (temp * (9 / 5)) + 32;
    String fahrenheitString = fahrenheit.toStringAsFixed(2);
    double f = double.parse(fahrenheitString);
    temperaturesInF.add(f);
  }
  return temperaturesInF;
}