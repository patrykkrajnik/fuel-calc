import 'package:flutter/material.dart';

class InsertPage extends StatefulWidget {
  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'FuelCalc',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                height: 60.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20.0)
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Text(
                    'Calculate'
                ),
              )
            ],
          ),
        )
    );
  }
}
