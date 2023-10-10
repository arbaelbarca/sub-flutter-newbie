
import 'package:flutter/material.dart';

class ThemeUtils extends StatelessWidget {
  ThemeUtils({super.key});

  final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.yellow,
      primarySwatch: Colors.yellow);

  final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.grey,
      primarySwatch: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
