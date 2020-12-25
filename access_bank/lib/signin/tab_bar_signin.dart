import 'package:access_bank/Dashboard/screens/support.dart';

import 'package:access_bank/quick_services.dart';
import 'package:access_bank/settings.dart';
import 'package:access_bank/signin/sign_in.dart';
import 'package:flutter/material.dart';

class TabBarScreenSignIn extends StatefulWidget {
  @override
  _TabBarScreenSignInState createState() => _TabBarScreenSignInState();
}

class _TabBarScreenSignInState extends State<TabBarScreenSignIn> {
  final List<Map<Object, Object>> tabs = [
    {'tab': SignIn(), 'title': 'Login'},
    {'tab': QuickServices(), 'title': 'Quick Services'},
    {'tab': SupportScreen(), 'title': 'Support'},
    {'tab': Settings(), 'title': 'Settings'},
  ];

  int _selectedTabIndex = 0;

  void _selectTab(int index) {
    setState(
      () {
        _selectedTabIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[_selectedTabIndex]['tab'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        iconSize: 25,
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.indigo[900],
        currentIndex: _selectedTabIndex,
        onTap: _selectTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_outline,
              color: Colors.grey[500],
            ),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_outlined,
              color: Colors.grey[500],
            ),
            label: 'Quick Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.headset_mic_outlined,
              color: Colors.grey[500],
            ),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey[500],
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
