import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: Colors.blue),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Loading",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
