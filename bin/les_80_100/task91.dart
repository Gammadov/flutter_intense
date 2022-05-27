import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'task91.g.dart';

void users() async{
  final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
  String jsonString = response.body;
  final dartMap = jsonDecode(jsonString);
  final dynamicList = dartMap["data"];

  List<User> users = List.generate(dynamicList.length, (index) => User.fromJson(dynamicList[index]));
  print(users[4]);
  print(users[4].avatar);
  print(users[4].email);
}


@JsonSerializable()
class User{
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  User(this.id, this.email, this.first_name, this.last_name, this.avatar);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

void main(){
  users();
}




