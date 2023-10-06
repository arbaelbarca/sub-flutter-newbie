import 'dart:convert';
/// name : "morpheus"
/// job : "leader"
/// id : "799"
/// createdAt : "2023-10-06T09:46:46.359Z"

UserDataResponse userDataResponseFromJson(String str) => UserDataResponse.fromJson(json.decode(str));
String userDataResponseToJson(UserDataResponse data) => json.encode(data.toJson());

class UserDataResponse {
  UserDataResponse({
      String? name, 
      String? job, 
      String? id, 
      String? createdAt,}){
    _name = name;
    _job = job;
    _id = id;
    _createdAt = createdAt;
}

  UserDataResponse.fromJson(dynamic json) {
    _name = json['name'].toString();
    _job = json['job'].toString();
    _id = json['id'].toString();
    _createdAt = json['createdAt'].toString();
  }
  String? _name;
  String? _job;
  String? _id;
  String? _createdAt;
UserDataResponse copyWith({  String? name,
  String? job,
  String? id,
  String? createdAt,
}) => UserDataResponse(  name: name ?? _name,
  job: job ?? _job,
  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
);
  String? get name => _name;
  String? get job => _job;
  String? get id => _id;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['job'] = _job;
    map['id'] = _id;
    map['createdAt'] = _createdAt;
    return map;
  }

}