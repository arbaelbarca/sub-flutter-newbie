import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_statefull_http.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    GetSingleHttpStatefull getSingleHttpStatefull = GetSingleHttpStatefull();

    return FutureBuilder(
      future: GetSingleHttpStatefull.getApiSingle("2").then((value) {
        getSingleHttpStatefull = value;
      }),
      initialData: "Loading data",
      builder: (context, snapshot) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Image.network(getSingleHttpStatefull.avatar),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "First Name : " + getSingleHttpStatefull.firstName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  "Last Name : ${getSingleHttpStatefull.lastName}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  "Email : ${getSingleHttpStatefull.email}",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
