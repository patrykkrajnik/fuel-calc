import 'package:flutter/material.dart';
import 'screens/insert_page.dart';

void main() => runApp(FuelCalc());

class FuelCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InsertPage(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      )
    );
  }
}