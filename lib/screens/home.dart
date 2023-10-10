import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/page/page_first.dart';
import 'package:sub_newbie_dicoding/screens/favorite_screens.dart';

import '../widgets/listview_widgets.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = "/homePage";

  final String getName;

  HomePage(this.getName, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isTypeList = false;
  var IsLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: isTypeList == false
                      ? Icon(Icons.grid_view_sharp)
                      : Icon(Icons.list),
                  onPressed: () async {
                    setState(() {
                      isTypeList = !isTypeList;
                    });
                    setState(() {
                      IsLoading = true;
                    });

                    await Future.delayed(const Duration(seconds: 5));

                    setState(() {
                      IsLoading = false;
                    });
                  },
                ),
                Badge(
                  child: IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () async {
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(FavoriteScreen.nameRoute);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  "Hi, ${widget.getName}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Welcome application tour wisata",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListViewWidgets(IsLoading: IsLoading, isTypeList: isTypeList),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(
              child: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(PageFirst.nameRoute);
            },
            icon: Icon(Icons.next_plan_outlined),
          )),
        ),
      ),
    );
  }
}
