import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_second.dart';

class PageThird extends StatefulWidget {
  static const nameRoute = "/thirdPage";

  const PageThird({super.key});

  @override
  State<PageThird> createState() => _PageThirdState();
}

class _PageThirdState extends State<PageThird> {
  var getTextFromPage = "";

  var parsingArgument = TextEditingController();


  @override
  void didChangeDependencies() {
    getTextFromPage = ModalRoute
        .of(context)
        ?.settings
        .arguments as String;
    super.didChangeDependencies();
  }

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
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Dapat data : " + getTextFromPage,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    onChanged: (value) {
                      parsingArgument.text = value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Input balik data"
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, PageSecond.nameRoute,
                          arguments: parsingArgument.text);
                    },
                    child: Text("Send back"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
