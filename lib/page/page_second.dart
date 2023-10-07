import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_third.dart';

class PageSecond extends StatefulWidget {
  static const nameRoute = "/secondPage";

  const PageSecond({super.key});

  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  var getData = "";

  @override
  void didChangeDependencies() {
    String getBackData = ModalRoute.of(context)?.settings.arguments == null ? "" : ModalRoute.of(context)?.settings.arguments as String;
    getData = getBackData;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    var getTextField = TextEditingController();

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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  style: TextStyle(fontSize: 15),
                  onChanged: (value) {
                    getTextField.text = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: getData!.isNotEmpty
                          ? Text("Dapat data balik : " + getData!)
                          : Text("Input data ")),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(
              child: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(PageThird.nameRoute, arguments: getTextField.text);
            },
            icon: Icon(Icons.next_plan_outlined),
          )),
        ),
      ),
    );
  }
}
