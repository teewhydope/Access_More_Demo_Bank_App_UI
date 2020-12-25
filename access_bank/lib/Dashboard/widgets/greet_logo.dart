import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Good afternoon, Teewhy',
            style: GoogleFonts.mandali(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/images/accesswhite.png',
              // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
