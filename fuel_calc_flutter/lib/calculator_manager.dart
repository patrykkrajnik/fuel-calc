class CalculatorManager {

  CalculatorManager({
    required this.distance,
    required this.fuelConsumption,
    required this.fuelPrice
});

  final int distance;
  final double fuelConsumption;
  final double fuelPrice;

  double result = 0.0;

  double calculateCost() {
    double tmpDistance = double.parse(getDistance());
    double tmpFuelConsumption = double.parse(getFuelConsumption());
    double tmpFuelPrice = double.parse(getFuelPrice());

    result = ((tmpDistance) * (tmpFuelConsumption * tmpFuelPrice)) / 100;

    return result;
  }

  String getDistance() {
    return distance.toString();
  }

  String getFuelConsumption() {
    return fuelConsumption.toStringAsFixed(1);
  }

  String getFuelPrice() {
    return fuelPrice.toStringAsFixed(1);
  }

  String getResult() {
    return calculateCost().toStringAsFixed(2);
  }

}