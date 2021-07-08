import 'package:flutter/material.dart';
import 'package:fuel_calc_flutter/components/action_button.dart';
import 'package:fuel_calc_flutter/constants.dart';

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
                    ConstantStrings.result,
                    style: ConstantTextStyles.pageTitleStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    result,
                    style: ConstantTextStyles.resultValueStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              padding: EdgeInsets.only(top: 15.0, bottom: 30.0),
              decoration: BoxDecoration(
                  color: ConstantColors.sectionBackgroundColor,
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    ConstantStrings.summary,
                    style: ConstantTextStyles.summaryTitleStyle,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Distance - $distance km',
                    style: ConstantTextStyles.summaryResultStyle,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Average Consumption - $fuelConsumption l/100km',
                    style: ConstantTextStyles.summaryResultStyle,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Price of 1 liter of fuel - $fuelPrice',
                    style: ConstantTextStyles.summaryResultStyle,
                  )
                ],
              ),
            ),
            Expanded(
                child: SizedBox()
            ),
            ActionButton(
                onTap: () {
                  Navigator.pop(context);
                  },
                buttonTitle: ConstantStrings.recalculateButton
            )
          ],
        ),
      ),
    );
  }
}
