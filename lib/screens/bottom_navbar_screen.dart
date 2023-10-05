import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_first.dart';
import 'package:sub_newbie_dicoding/page/page_second.dart';
import 'package:sub_newbie_dicoding/page/page_third.dart';
import 'package:sub_newbie_dicoding/screens/favorite_screens.dart';
import 'package:sub_newbie_dicoding/screens/home.dart';
import 'package:sub_newbie_dicoding/screens/login.dart';
import 'package:sub_newbie_dicoding/screens/network_provider_screen.dart';
import 'package:sub_newbie_dicoding/screens/network_screen.dart';

class BottomNavbarPage extends StatefulWidget {
  static const nameRoute = "/bottomNavbarPage";

  const BottomNavbarPage({super.key});

  @override
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Center(
    //   // child: Text(
    //   //   'Index 0: Home',
    //   //   style: optionStyle,
    //   // ),
    //   child: MaterialApp(
    //     home: HomePage("oko"),
    //   ),
    // ),
    LoginApp(),
    NetworkPage(),
    NetworkPageProvider(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Sample'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Network http',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Network provider',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped),
      ),
    );
  }
}
