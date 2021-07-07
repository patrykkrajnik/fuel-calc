import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'result_page.dart';

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
                    'FuelCalc',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  height: 150.0,
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
                          'Distance (km)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'eg. 250',
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
                  height: 160.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Text(
                          'Average Consumption (l/100km)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            fuelConsumption.toStringAsFixed(1),
                            style: TextStyle(
                              color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold
                            ),
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
                  height: 160.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Text(
                          'Price of 1 liter of fuel',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            fuelPrice.toStringAsFixed(1),
                            style: TextStyle(
                              color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold
                            ),
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
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent)
                  ),
                  onPressed: () {
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
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => ResultPage(
                                distance: distance,
                                fuelConsumption: fuelConsumption,
                                fuelPrice: fuelPrice,
                              )
                          )
                      );
                    }
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
                        'Calculate',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}