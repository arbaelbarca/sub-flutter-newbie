import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class GetSingleDataProviderHttp with ChangeNotifier {
  Map<String, dynamic> dataMap = {};

  Map<String, dynamic> get getDataMap => dataMap;

  int get jumlahData => dataMap.length;

  Map<String, dynamic> dataListUser = {};

  Map<String, dynamic> get getDataListUser => dataListUser;


  void getApiSingle(String id) async {
    Uri uri = Uri.parse("https://reqres.in/api/users/$id");

    var resultResponse = await http.get(uri);

    dataMap = json.decode(resultResponse.body)["data"];

    print("respon Data $dataMap");
    notifyListeners();
  }

  static Future<UserListModel> getApiListUser(String page) async {
    late UserListModel userListModel;

    Uri uri = Uri.parse("https://reqres.in/api/users?page$page");
    var resultResponse = await http.get(uri);

    if (resultResponse.statusCode == 200){
      final itemData = json.decode(resultResponse.body);
      userListModel = UserListModel.fromJson(itemData);
    }

    print("respon Data dia $userListModel");

    return userListModel;
  }
}
