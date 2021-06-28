import 'package:flutter/material.dart';

void main() => runApp(FuelCalc());

class FuelCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      )
    );
  }
}