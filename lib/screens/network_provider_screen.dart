import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_provider_http.dart';
import 'package:sub_newbie_dicoding/widgets/user_list_item.dart';

class NetworkPageProvider extends StatefulWidget {
  const NetworkPageProvider({super.key});

  @override
  State<NetworkPageProvider> createState() => _NetworkPageProviderState();
}

class _NetworkPageProviderState extends State<NetworkPageProvider> {

  @override
  void initState() {
    super.initState();
    Provider.of<GetSingleDataProviderHttp>(context,listen: false).getApiSingle("2");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Consumer<GetSingleDataProviderHttp>(
              builder: (context, value, child) {
                return value.isLoading ? CircularProgressIndicator()
                    : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        child: Image.network(value.getDataMap["avatar"]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "First Name : " + value.getDataMap["first_name"],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Consumer<GetSingleDataProviderHttp>(
                        builder: (context, value, child) {
                          return Text(
                            "Last Name : " + value.getDataMap["last_name"],
                            style: TextStyle(fontSize: 15),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Email : " + value.dataMap["email"],
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
