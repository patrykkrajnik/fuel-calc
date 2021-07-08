import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({
    required this.distance,
    required this.fuelConsumption,
    required this.fuelPrice,
    required this.result
});

  final String distance;
  final String fuelConsumption;
  final String fuelPrice;
  final String result;

  final textFieldSectionColor = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Total cost of ride:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.only(top: 15.0, bottom: 30.0),
              decoration: BoxDecoration(
                  color: textFieldSectionColor,
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Distance - $distance km',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Average Consumption - $fuelConsumption l/100km',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Price of 1 liter of fuel - $fuelPrice',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: SizedBox()
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Center(
                    child: Text(
                      'Recalculate',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
