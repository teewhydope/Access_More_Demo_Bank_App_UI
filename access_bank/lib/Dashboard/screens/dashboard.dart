import 'dart:ui';

import 'package:access_bank/Dashboard/widgets/fav_edit.dart';
import 'package:access_bank/Dashboard/widgets/greet_logo.dart';
import 'package:access_bank/Dashboard/widgets/grid.dart';
import 'package:access_bank/Dashboard/widgets/slider.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.85),
                      Theme.of(context).primaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: GreetLogo()),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: FavEdit()),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: Grid()),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: SliderWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
