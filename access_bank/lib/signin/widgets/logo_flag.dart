import 'package:flutter/material.dart';

class LogoFlag extends StatelessWidget {
  const LogoFlag({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 70,
            width: 150,
            child: Image.asset(
              'assets/images/accesslg.png',
            ),
          ),
          Container(
            height: 35,
            width: 70,
            child: Image.asset(
              'assets/images/nglogo.png',
            ),
          ),
        ],
      ),
    );
  }
}
