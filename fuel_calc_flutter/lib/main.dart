import 'package:flutter/material.dart';
import 'screens/insert_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(FuelCalc());

class FuelCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

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