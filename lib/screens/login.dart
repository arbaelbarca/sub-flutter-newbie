import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/screens/home.dart';
import 'package:sub_newbie_dicoding/utils.dart';

class LoginApp extends StatefulWidget {
  static const nameRoute = "/loginPage";

  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginPageNewContext());
  }
}

class LoginPageNewContext extends StatefulWidget {
  const LoginPageNewContext({super.key});

  @override
  State<LoginPageNewContext> createState() => _LoginPageNewContextState();
}

class _LoginPageNewContextState extends State<LoginPageNewContext> {
  final loginController = TextEditingController();

  String getName = "";
  String getPassword = "";

  bool IsShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4,
                left: 20,
                right: 20,
                bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          style: TextStyle(fontSize: 13),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.supervised_user_circle),
                              border: OutlineInputBorder(),
                              hintText: "Input your username",
                              labelText: "Username"),
                          onChanged: (String value) {
                            // name = value;
                            getName = value;
                            loginController.text = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: TextField(
                          style: TextStyle(fontSize: 13),
                          obscureText: !IsShowPassword,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: !IsShowPassword
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    IsShowPassword = !IsShowPassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(),
                              hintText: "Input your password",
                              labelText: "Password"),
                          onChanged: (String value) {
                            // name = value;
                            getPassword = value;
                            loginController.text = value;
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              //if else each
                              getName.isEmpty
                                  ? showToast("Username Not to be empty")
                                  : getPassword.isEmpty
                                      ? showToast("Password Not to be empty")
                                      : Navigator.of(context, rootNavigator: true)
                                          .pushNamed(HomePage.nameRoute);

                              // Navigator.push(context,
                              //             MaterialPageRoute(builder: (context) {
                              //             return Home(loginController.text);
                              //           }));
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

  void validationEmpty(String value) {}
}

class ButtonSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                showDialogAlert(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                    "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                showDialogAlert(context);
                print("action dialog");
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                    "https://w7.pngwing.com/pngs/561/460/png-transparent-fb-facebook-facebook-logo-social-media-icon.png"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                showDialogAlert(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/25/25231.png"),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showDialogAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Attention"),
        content: Text("The feature coming soon"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Container(
              child: Text("Ok"),
            ),
          )
        ],
      ),
    );
  }
}
