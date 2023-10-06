import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';
import 'package:sub_newbie_dicoding/interceptor/LoggingInterceptor.dart';
import 'package:sub_newbie_dicoding/model/user_data_response.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class GetSingleDataProviderHttp with ChangeNotifier {
  static const BASE_URL = "https://reqres.in/api/users";

  Map<String, dynamic> dataMap = {};

  Map<String, dynamic> get getDataMap => dataMap;

  int get jumlahData => dataMap.length;

  Map<String, dynamic> dataListUser = {};

  Map<String, dynamic> get getDataListUser => dataListUser;

  bool isLoading = false;

  static http.Client clientInterceptor = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  void getApiSingle(String id) async {
    Uri uri = Uri.parse("$BASE_URL/$id");

    isLoading = true;
    var resultResponse = await clientInterceptor.get(uri);
    isLoading = false;

    dataMap = json.decode(resultResponse.body)["data"];

    print("respon Data $dataMap");
    notifyListeners();
  }

  static Future<UserListModel> getApiListUser(String page) async {
    late UserListModel userListModel;

    Uri uri = Uri.parse("$BASE_URL?$page");
    var resultResponse = await clientInterceptor.get(uri);

    if (resultResponse.statusCode == 200) {
      final itemData = json.decode(resultResponse.body);
      userListModel = UserListModel.fromJson(itemData);
    }

    print("respon Data dia $userListModel");

    return userListModel;
  }

  static Future<UserDataResponse> postApiUser(String name, String jobs) async {
    Uri uri = Uri.parse(BASE_URL);

    Map bodyMap = {"name": name, "job": jobs};

    var requestBody =
        await clientInterceptor.post(uri, body: bodyMap);

    var resultResponse = userDataResponseFromJson(requestBody.body);
    print("respon Response body" + requestBody.body);

    return resultResponse;
  }
}
