
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_third.dart';

class PageSecond extends StatelessWidget {
  static const nameRoute = "/secondPage";

  const PageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page Second"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Text("Halo Page Seoncd"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context,rootNavigator: true).pushNamed(PageThird.nameRoute);
                },
                icon: Icon(Icons.next_plan_outlined),
              )),
        ),
      ),
    );
  }
}