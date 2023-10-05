import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class GetSingleDataProviderHttp with ChangeNotifier {
  Map<String, dynamic> dataMap = {};

  Map<String, dynamic> get getDataMap => dataMap;

  int get jumlahData => dataMap.length;

  void getApiSingle(String id) async {
    Uri uri = Uri.parse("https://reqres.in/api/users/$id");

    var resultResponse = await http.get(uri);

    dataMap = json.decode(resultResponse.body)["data"];

    print("respon Data $dataMap");
    notifyListeners();
  }
}
