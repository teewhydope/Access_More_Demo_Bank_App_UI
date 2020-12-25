import 'package:access_bank/splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:ipomarket/helper/Style.dart';

void main() => runApp(MyRootApp());

class MyRootApp extends StatelessWidget {
  Color customColor(String color) {
    String hex = color.replaceAll("#", "");
    if (hex.isEmpty) hex = "ffffff";
    if (hex.length == 3) {
      hex =
          '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
    }
    Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
    return col;
  }
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: customColor('#036FFA'),
        primarySwatch: Colors.red,
        accentColor: customColor('#ff8201'),
      ),
      home: SplashScreen(),
    );
  }
}
