import 'dart:convert';

import 'package:http/http.dart' as http;

class GetSingleHttpStatefull {
  String id = "";
  String email, firstName, lastName, avatar;

  GetSingleHttpStatefull(
      {this.id = "", this.email = "", this.firstName = "", this.lastName = "", this.avatar = ""});

  static Future<GetSingleHttpStatefull> getApiSingle(String id) async {
    Uri uri = Uri.parse("https://reqres.in/api/users/$id");

    var resultResponse = await http.get(uri);

    var getData = json.decode(resultResponse.body)["data"];

    print("respon Data $getData");

    return GetSingleHttpStatefull(
      id: getData["id"].toString(),
      email: getData["email"],
      firstName: getData["first_name"],
      lastName: getData["last_name"],
      avatar: getData["avatar"],
    );
  }
}
