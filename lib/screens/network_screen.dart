import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_statefull_http.dart';
import 'package:sub_newbie_dicoding/http/get_user_provider.dart';
import 'package:sub_newbie_dicoding/screens/user_add_form_screen.dart';
import 'package:sub_newbie_dicoding/widgets/user_list_item.dart';

import '../http/get_singledata_provider_http.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilderStatefullList(),
    );
  }
}

class FutureBuilderStatefull extends StatelessWidget {
  FutureBuilderStatefull({super.key});

  GetSingleHttpStatefull getSingleHttpStatefull = GetSingleHttpStatefull();

  @override
  Widget build(BuildContext context) {
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

class FutureBuilderStatefullList extends StatefulWidget {
  const FutureBuilderStatefullList({super.key});

  @override
  State<FutureBuilderStatefullList> createState() => _FutreBuilderStatefState();
}

class _FutreBuilderStatefState extends State<FutureBuilderStatefullList> {
  @override
  void initState() {
    Provider.of<DataUserListProvider>(context, listen: false).getUserData("2");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dataUser = Provider.of<DataUserListProvider>(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: dataUser.isLoading
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: dataUser.userListModel.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return UserPageList(
                              dataUser.userListModel.data![index]);
                        },
                      ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(UserAddFormPage.nameRoute);
              },
              icon: Icon(Icons.add_box),
            )),
      ),
    );
  }
}
