import 'package:flutter/material.dart';
import 'package:sub_newbie_dicoding/http/get_singledata_provider_http.dart';
import 'package:sub_newbie_dicoding/model/user_data_response.dart';
import 'package:sub_newbie_dicoding/model/user_model.dart';

class DataUserListProvider with ChangeNotifier {
  late UserListModel userListModel;
  late UserDataResponse dataUserResponse ;

  bool isLoading = false;

  getUserData(String page) async {
    isLoading = true;
    userListModel = await GetSingleDataProviderHttp.getApiListUser(page);
    isLoading = false;

    notifyListeners();
  }

  postUserData(String name, String jobs) async {
    isLoading = true;
    dataUserResponse = await GetSingleDataProviderHttp.postApiUser(name, jobs);
    print("respon Response" + userDataResponseToJson(dataUserResponse));
    isLoading = false;

    notifyListeners();
  }
}
