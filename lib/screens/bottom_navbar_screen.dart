import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sub_newbie_dicoding/main.dart';
import 'package:sub_newbie_dicoding/page/page_first.dart';
import 'package:sub_newbie_dicoding/screens/login.dart';
import 'package:sub_newbie_dicoding/screens/network_provider_screen.dart';
import 'package:sub_newbie_dicoding/screens/network_screen.dart';
import 'package:sub_newbie_dicoding/widgets/themes.dart';

class BottomNavbarPage extends StatefulWidget {
  static const nameRoute = "/bottomNavbarPage";

  const BottomNavbarPage({super.key});

  @override
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {
  int _selectedIndex = 0;

  bool isLightDark = false;

  static const List<Widget> _widgetOptions = <Widget>[
    LoginApp(),
    NetworkPage(),
    NetworkPageProvider(),
    PageFirst()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  void initState() {
    print("respon IniState()");
    super.initState();
    initPreferences();
  }


  late SharedPreferences sharedPreferences;

  void changeTheme(bool isValue) {
    isLightDark = isValue;
    initPreferences();
    initSetValuePreference();
  }

  void initSetValuePreference() {
    sharedPreferences.setBool("themeData", isLightDark);
  }

  initPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {});
  }


  ThemeData getIsThemePreference() {
    ThemeData theme;
    var getIsDark = sharedPreferences.getBool("themeData");
    print("respon Isdark $getIsDark");
    if (getIsDark.toString() == "true") {
      theme = ThemeUtils().darkTheme;
      isLightDark = true;
    } else {
      theme = ThemeUtils().lightTheme;
      isLightDark = false;
    }

    setState(() {});

    return theme;
  }

  @override
  Widget build(BuildContext context) {
    print("respon builds()");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getIsThemePreference(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
            actions: [
              Switch(
                value: isLightDark,
                activeColor: Colors.yellow,
                onChanged: (value) {
                  changeTheme(value);
                },
              ),
            ],
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
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'Argument',
                ),
              ],
              enableFeedback: true,
              elevation: 20,
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped)),
    );
  }
}
