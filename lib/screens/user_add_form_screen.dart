import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/model/user_data_response.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';
import 'package:sub_newbie_dicoding/screens/bottom_navbar_screen.dart';

import '../http/get_user_provider.dart';
import '../utils.dart';

class UserAddFormPage extends StatefulWidget {
  static const nameRoute = "/userAddFormPage";

  var getParsingTextField = "";

  UserAddFormPage({super.key});

  @override
  State<UserAddFormPage> createState() => _UserAddFormPageState();
}

class _UserAddFormPageState extends State<UserAddFormPage> {
  var getName = TextEditingController();
  var getJobs = TextEditingController();

  Future<DataUser>? futureDataUser;

  UserDataResponse? dataUserResponse;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Future<void> postUserData() async {
      var getProviderPostData =
          Provider.of<DataUserListProvider>(context, listen: false);

      await getProviderPostData.postUserData(getName.text, getJobs.text);

      if (!getProviderPostData.isLoading) {
        showToast(
            "Sucess menambahkan data ${getProviderPostData.dataUserResponse.name}");
        dataUserResponse = getProviderPostData.dataUserResponse;
        setState(() {});
        final getPageBefore = await Navigator.pushNamed(
            context, BottomNavbarPage.nameRoute,
            arguments: getName.text);
        Navigator.pop(context, getPageBefore);
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tambah Data"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Tambah data user",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          style: TextStyle(fontSize: 13),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.supervised_user_circle),
                              border: OutlineInputBorder(),
                              hintText: "Input your username",
                              labelText: widget.getParsingTextField.isNotEmpty
                                  ? widget.getParsingTextField.toString()
                                  : "Username "),
                          onChanged: (String value) {
                            // name = value;
                            getName.text = value;
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          style: TextStyle(fontSize: 13),
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                              hintText: "Whats your jobs",
                              labelText: "Jobs"),
                          onChanged: (String value) {
                            // name = value;
                            getJobs.text = value;
                          },
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: dataUserResponse != null
                              ? Text("resul data " +
                                  dataUserResponse!.name.toString())
                              : Text("Data Kosong"))
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          //if else each

                          getName.text.isEmpty
                              ? showToast("Username Not to be empty")
                              : getJobs.text.isEmpty
                                  ? showToast("Jobs Not to be empty")
                                  : postUserData();
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
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
