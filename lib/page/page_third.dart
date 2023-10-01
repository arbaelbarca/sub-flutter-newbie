

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageThird extends StatelessWidget {
  static const nameRoute = "/thirdPage";

  const PageThird({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page Third"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Text("Halo Page Third"),
        ),
      ),
    );
  }
}