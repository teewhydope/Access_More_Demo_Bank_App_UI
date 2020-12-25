import 'package:flutter/material.dart';
import 'package:access_bank/signin/widgets/logo_flag.dart';
import 'package:access_bank/signin/widgets/slide_textfield_button.dart';

//import 'package:animator/animator.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(229, 230, 234, 1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: LogoFlag()),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: SlideTextButton()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
