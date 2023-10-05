import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_provider_http.dart';

class NetworkPageProvider extends StatefulWidget {
  const NetworkPageProvider({super.key});

  @override
  State<NetworkPageProvider> createState() => _NetworkPageProviderState();
}

class _NetworkPageProviderState extends State<NetworkPageProvider> {
  @override
  Widget build(BuildContext context) {
    final getSingleProviderList =
        Provider.of<GetSingleDataProviderHttp>(context);

    getSingleProviderList.getApiSingle("2");

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Consumer<GetSingleDataProviderHttp>(
                    builder: (context, value, child) => CircleAvatar(
                      radius: 50,
                      child: Image.network(value.dataMap["avatar"]),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Consumer<GetSingleDataProviderHttp>(
                    builder: (context, value, child) {
                      return Text(
                        "First Name : " + value.dataMap["first_name"],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Consumer<GetSingleDataProviderHttp>(
                    builder: (context, value, child) {
                      return Text(
                        "Last Name : " + value.dataMap["last_name"],
                        style: TextStyle(fontSize: 15),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Consumer<GetSingleDataProviderHttp>(
                    builder: (context, value, child) {
                      return Text(
                        "Email : " + value.dataMap["email"],
                        style: TextStyle(fontSize: 13),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
