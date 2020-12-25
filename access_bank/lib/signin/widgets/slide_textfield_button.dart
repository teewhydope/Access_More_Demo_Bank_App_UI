import 'package:access_bank/Dashboard/tab_bar.dart';
import 'package:flutter/material.dart';

import '../../Dashboard/screens/dashboard.dart';

class SlideTextButton extends StatefulWidget {
  @override
  _SlideTextButtonState createState() => _SlideTextButtonState();
}

class _SlideTextButtonState extends State<SlideTextButton>
    with SingleTickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1300),
    );
    animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -1.2))
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(
          position: animation,
          child: Container(
            height: 28,
            width: double.infinity,
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Welcome back,',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 25,
                    fontFamily: 'Effra_Std_Lt.ttf',
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Teewhy',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontFamily: 'Effra_Std_Lt.ttf')),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.grey[500],
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 16, color: Colors.indigo[900]),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 48,
            child: RaisedButton(
              color: Color.fromRGBO(255, 130, 1, 1),
              child: Text(
                'SIGN IN WITH BIOMETRICS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => TabBarScreen(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RichText(
          text: TextSpan(
            text: 'Not Ibrahim?',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Unlock device',
                style: TextStyle(
                    color: Color.fromRGBO(255, 130, 1, 1), fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
