import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sub_newbie_dicoding/home.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Welcome My Apps",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        style: TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Masukan Nama Anda",
                            labelText: "Nama Anda"),
                        onChanged: (String value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeApp(name);
                              }));
                              showToast("aaaahaha");
                              print("mauulah");
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text("Or sigin with"),
                ),
                ButtonSocialMedia()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER);
  }
}

class ButtonSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(3.0),
            child: const Icon(
              Icons.facebook,
              size: 50,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: const Icon(
              Icons.facebook,
              size: 50,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(3.0),
            child: const Icon(
              Icons.facebook,
              size: 50,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
