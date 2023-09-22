import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sub_newbie_dicoding/home.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPageNewContext(),
    );
  }
}

class LoginPageNewContext extends StatefulWidget {
  const LoginPageNewContext({super.key});

  @override
  State<LoginPageNewContext> createState() => _LoginPageNewContextState();
}

class _LoginPageNewContextState extends State<LoginPageNewContext> {
  final loginController = TextEditingController();

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
                Column(
                  children: [
                    Container(
                      child: TextFormField(
                        style: TextStyle(fontSize: 13),
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Input your name",
                            labelText: "Name"),
                        onChanged: (String value) {
                          // name = value;
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
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeApp(loginController.text);
                            }));

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
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.network(
                  "https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                _dialogBuilder(context);
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
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/25/25231.png"),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Information'),
          content: const Text(
            'The Feature Coming Soon',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Exit'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
