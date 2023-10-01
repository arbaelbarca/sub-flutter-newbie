import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_second.dart';

class PageFirst extends StatelessWidget {
  static const nameRoute = "/firstPage";

  const PageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First page"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Text("Halo First Page"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context,rootNavigator: true).pushNamed(PageSecond.nameRoute);
                },
                icon: Icon(Icons.next_plan_outlined),
              )),
        ),
      ),
    );
  }
}
