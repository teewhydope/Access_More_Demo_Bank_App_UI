import 'package:flutter/material.dart';

class FavEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My favorites',
            style: TextStyle(
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),
          Text(
            'Edit',
            style: TextStyle(
                letterSpacing: 1.2,
                //fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
