import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sub_newbie_dicoding/http/get_user_provider.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class UserPageList extends StatelessWidget {
  final DataUser dataUser;

  const UserPageList(this.dataUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: BorderSide.strokeAlignOutside,
      borderOnForeground: true,
      margin: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.network(dataUser.avatar.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
