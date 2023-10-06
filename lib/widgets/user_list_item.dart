import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/http/get_user_provider.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class UserPageList extends StatelessWidget {
  final DataUser dataUser;

  const UserPageList(this.dataUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7),
      child: Card(
        elevation: 10,
        borderOnForeground: true,
        margin: const EdgeInsets.all(4.0),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  dataUser.avatar.toString(),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                            "Nama : " +
                                dataUser.firstName.toString() +
                                dataUser.lastName.toString(),
                            style: TextStyle(fontSize: 15))),
                    Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Text(
                          "Email : " + dataUser.email.toString(),
                          style: TextStyle(fontSize: 12),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
