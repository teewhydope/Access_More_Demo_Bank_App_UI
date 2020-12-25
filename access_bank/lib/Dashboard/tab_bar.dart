import 'package:access_bank/Dashboard/screens/banking.dart';
import 'package:access_bank/Dashboard/screens/dashboard.dart';
import 'package:access_bank/Dashboard/screens/profile.dart';
import 'package:access_bank/Dashboard/screens/qr_scan.dart';
import 'package:access_bank/Dashboard/screens/support.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final List<Map<Object, Object>> tabs = [
    {'tab': DashboardScreen(), 'title': ''},
    {'tab': BankingScreen(), 'title': ''},
    {'tab': QrScanScreen(), 'title': ''},
    {'tab': SupportScreen(), 'title': ''},
    {'tab': ProfileScreen(), 'title': ''},
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
        elevation: 10,
        iconSize: 25,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedItemColor: Colors.indigo[900],
        currentIndex: _selectedTabIndex,
        onTap: _selectTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey[500],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes_outlined,
              color: Colors.grey[500],
            ),
            label: 'Bank',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_outlined,
              color: Colors.grey[500],
            ),
            label: 'Scan',
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
              Icons.person_outline,
              color: Colors.grey[500],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
