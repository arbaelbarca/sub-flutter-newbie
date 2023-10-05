import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_provider_http.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class DataUserListProvider with ChangeNotifier {
  late UserListModel userListModel;

  bool isLoading = false;

  GetSingleDataProviderHttp getSingleDataProviderHttp = GetSingleDataProviderHttp();

  getUserData(String page) async {
    isLoading = true;
    userListModel = await GetSingleDataProviderHttp.getApiListUser(page);
    isLoading = false;

    notifyListeners();
  }
}