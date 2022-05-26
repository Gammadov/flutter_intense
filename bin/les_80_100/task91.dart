import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:json_annotation/json_annotation.dart';

part 'task91.g.dart';

@JsonSerializable()
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

void main() {
  example2();
}

void example1() {
  String jsonString = '''
  [
  {
    "userId": 3,
    "id": 1,
    "title": "sunt aut \n",
    "body": "quia et \n"
  }
  ]
  ''';

  // final jsonList = jsonDecode(jsonString.replaceAll('\n', ' ')) as List<dynamic>;
  List<dynamic> jsonList = jsonDecode(jsonString.replaceAll('\n', ' '));
  print(jsonList[0]);
  print((jsonList[0] as Map<String, dynamic>)['title']);

  Post publication = Post.fromJson(jsonList[0] as Map<String, dynamic>);
  print(publication);
  print(publication.body);
  print(publication.userId);
}

void example2() {
  String jsonString = '''
  [
  {
    "userId": 3,
    "id": 1,
    "title": "sunt aut \n",
    "body": "quia et \n"
  }
  ]
  ''';

  final getRequest =
      http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  getRequest.then((responseJSON) {
    jsonString = responseJSON.body;

    // final jsonList = jsonDecode(jsonString.replaceAll('\n', ' ')) as List<dynamic>;
    final jsonList = jsonDecode(jsonString.replaceAll('\n', ' '));

    print(jsonList[1]);
    print('');
    print((jsonList[1] as Map<String, dynamic>)['title']);

    // Post publication = Post.fromJson(jsonList[1] as Map<String, dynamic>);
    // print('');
    // print(publication.title);

    final jsonMap = jsonList.map((dynamic element) => Post.fromJson(element as Map<String, dynamic>));
    List<dynamic> publications = jsonMap.toList();
    print((publications[1] as Post).title);
  });
}
