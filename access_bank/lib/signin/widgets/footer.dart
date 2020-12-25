import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 0.3)),
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [Icon(Icons.lock), Text('Login')],
            ),
            Column(
              children: [Icon(Icons.my_library_books), Text('Quick Services')],
            ),
            Column(
              children: [Icon(Icons.headset_mic), Text('Support')],
            ),
            Column(
              children: [Icon(Icons.settings), Text('Settings')],
            ),
          ],
        ),
      ),
    );
  }
}
