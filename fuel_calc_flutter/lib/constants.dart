import 'package:flutter/material.dart';

class ConstantProperties {
  static const textFieldSectionHeight = 150.0;
  static const sliderSectionHeight = 160.0;
}

class ConstantStrings {
  static const appName = 'FuelCalc';
  static const calculateButton = 'Calculate';
  static const recalculateButton = 'Recalculate';

  // InsertPage titles
  static const distance = 'Distance (km)';
  static const averageConsumption = "Average Consumption (l/100km)";
  static const fuelPrice = "Price of 1 liter of fuel";

  // InsertPage placeholder
  static const distancePlaceholder = "eg. 250";

  // ResultPage titles
  static const result = "Total cost of ride:";
  static const summary = "Summary";
}

class ConstantColors {
  static final sectionBackgroundColor = Colors.grey.shade200;
  static final buttonBackgroundColor = Colors.grey.shade400;
}

class ConstantTextStyles {
  static const pageTitleStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  static const sectionTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static const sliderSectionValueStyle = TextStyle(
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.bold
  );

  static const buttonTitleStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24.0,
      color: Colors.black
  );

  static const resultValueStyle = TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400
  );

  static const summaryTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  );

  static const summaryResultStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
  );
}