import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'result_page.dart';
import 'package:fuel_calc_flutter/calculator_manager.dart';
import 'package:fuel_calc_flutter/constants.dart';
import 'package:fuel_calc_flutter/components/action_button.dart';

class InsertPage extends StatefulWidget {
  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {

  int distance = 0;
  double fuelConsumption = 0.0;
  double fuelPrice = 0.0;

  var textFieldSectionColor = Colors.grey.shade200;

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                  child: Text(
                    ConstantStrings.appName,
                    style: ConstantTextStyles.pageTitleStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  height: ConstantProperties.textFieldSectionHeight,
                  decoration: BoxDecoration(
                      color: textFieldSectionColor,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          ConstantStrings.distance,
                          style: ConstantTextStyles.sectionTitleStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: ConstantStrings.distancePlaceholder,
                            fillColor: Colors.white,
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                          controller: myController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  height: ConstantProperties.sliderSectionHeight,
                  decoration: BoxDecoration(
                      color: ConstantColors.sectionBackgroundColor,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Text(
                          ConstantStrings.averageConsumption,
                          style: ConstantTextStyles.sectionTitleStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            fuelConsumption.toStringAsFixed(1),
                            style: ConstantTextStyles.sliderSectionValueStyle,
                          ),
                        ),
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Colors.grey.shade300,
                            activeTrackColor: Colors.grey.shade400,
                            thumbColor: Colors.grey.shade600,
                            overlayColor: Color(0x29757575),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          ),
                          child: Slider(
                            value: fuelConsumption,
                            min: 0.0,
                            max: 40.0,
                            onChanged: (double newValue) {
                              setState(() {
                                fuelConsumption = newValue;
                              });
                            },
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  height: ConstantProperties.sliderSectionHeight,
                  decoration: BoxDecoration(
                      color: ConstantColors.sectionBackgroundColor,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Text(
                          ConstantStrings.fuelPrice,
                          style: ConstantTextStyles.sectionTitleStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            fuelPrice.toStringAsFixed(1),
                            style: ConstantTextStyles.sliderSectionValueStyle,
                          ),
                        ),
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Colors.grey.shade300,
                            activeTrackColor: Colors.grey.shade400,
                            thumbColor: Colors.grey.shade600,
                            overlayColor: Color(0x29757575),
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          ),
                          child: Slider(
                            value: fuelPrice,
                            min: 0.0,
                            max: 10.0,
                            onChanged: (double newValue) {
                              setState(() {
                                fuelPrice = newValue;
                              });
                            },
                          )
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                ActionButton(
                    onTap: () {
                      if (myController.text != '') {
                        distance = int.parse(myController.text);
                      } else {
                        distance = 0;
                      }

                      if (distance == 0) {
                        setState(() {
                          textFieldSectionColor = Colors.red.shade600;
                          Timer(Duration(milliseconds: 800), () {
                            setState(() {
                              textFieldSectionColor = Colors.grey.shade200;
                            });
                          });
                        });
                      } else {

                        CalculatorManager calc = CalculatorManager(
                            distance: distance,
                            fuelConsumption: fuelConsumption,
                            fuelPrice: fuelPrice);

                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => ResultPage(
                                  distance: calc.getDistance(),
                                  fuelConsumption: calc.getFuelConsumption(),
                                  fuelPrice: calc.getFuelPrice(),
                                  result: calc.getResult(),
                                )
                            )
                        );
                      }
                    },
                    buttonTitle: ConstantStrings.calculateButton
                )
              ],
            ),
          ),
        )
    );
  }
}