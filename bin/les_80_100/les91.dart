import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'les91.g.dart';


@JsonSerializable()
class User{
  final id;
  final email;
  final first_name;
  final last_name;
  final avatar;

  User(this.id, this.email, this.first_name, this.last_name, this.avatar);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

void main(){
  final getRequest =
  http.get(Uri.parse('https://reqres.in/api/users?page=1'));
  getRequest.then((value) {
    String jsonString = value.body;
    // print(jsonString);

    final dynamicList = jsonDecode(jsonString)['data'];
    print(dynamicList);

    // print(dynamicList[0].runtimeType);

    User zero = User.fromJson(dynamicList[0]);
    print(zero.first_name);
    print(zero.email);

    List<User> users = List.generate(dynamicList.length, (index) => User.fromJson(dynamicList[index]));
    print(users);
    print(users[0].first_name);
    print(users[0].email);
  });
}