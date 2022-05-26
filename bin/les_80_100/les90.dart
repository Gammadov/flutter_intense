// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() {
//   var scores = [
//     {'score': 40},
//     {'score': 80},
//     {'score': 100, 'overtime': true, 'special_guest': null}
//   ];
//
//   var jsonText = jsonEncode(scores);
//   print(jsonText.runtimeType);
//   print(jsonText);
// }
//
// void example() {
//   String jsonString = '''
// [
//   {"Charles": "1'18.750"},
//   {"Max": "1'19.073"},
//   {"Carlos": "1'19.166"},
//   {"George": "1'19.393"},
//   {"Sergio": "1'19.420"},
//   {"Kingdom": "1'19.512"},
//   {"Valtteri": "1'19.608"},
//   {"Kevin": "1'19.682"},
//   {"Daniel": "1'20.297"},
//   {"Mick": "1'20.368"}
// ]
//   ''';
//
//   final results = jsonDecode(jsonString);
//   print(results.runtimeType);
//   print(results[7]);
//   print((results[7] as Map<String, dynamic>)['Kevin']);
// }
//
// void example2() {
//   final getRequest =
//       http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
//   getRequest.then((value) {
//     String jsonString = value.body;
//     // print(jsonString);
//
//     final todos = jsonDecode(jsonString);
//     print(todos.length);
//     // print(todos.runtimeType);
//     print(todos[7].runtimeType);
//     print(todos[7]);
//     print((todos[7] as Map<String, dynamic>)['title']);
//   });
// }
//
// void example3() {
//   var scores = [
//     {'score': 40},
//     {'score': 80},
//     {'score': 100, 'overtime': true, 'special_guest': null}
//   ];
//
//   var jsonText = jsonEncode(scores);
//   print(jsonText.runtimeType);
//   print(jsonText);
// }

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  example3();
}


void example3(){
  final kolich = [
    {'common': 23, "offline": 14},
    {'common': 22, "offline": 8},
    {'common': 17, "offline": 8},
    {'common': 18, "offline": 8},
  ];

  String jsonString = jsonEncode(kolich);
  print(jsonString.runtimeType);
  print(jsonString);
}


void photos() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  String jsonString = response.body;

  final dynamicList = jsonDecode(jsonString);
  List<Map<String, dynamic>> mapList = List.from(dynamicList);

  print(mapList[0]);
  print(mapList[1]);
  print(mapList[2]);
  print(mapList[3]);
  print(mapList[4]);

  print(mapList[0].length);
  print(mapList[0].keys);
  print(mapList[0].values);
}

void schedule() {
  String jsonSchedule = '''
[
	{"08:00": "Санкт-Петербург"},
	{"08:50": "Бухара"},
	{"11:50": "Москва"},
	{"12:30": "Ургенч"},
	{"19:30": "Екатеринбург"},
	{"22:05": "Сургут"}
]
  ''';

  final dynamicList = jsonDecode(jsonSchedule);
  List<Map<String, dynamic>> mapList = List.from(dynamicList);
  print(mapList);
  print(mapList[1].length);
  print(mapList[2].keys);
}

void example1() {
  String jsonString = '''
  [
    {"userId": 10},
    {"userId": 11},
    {"userId": 12},
    {"userId": 13}
  ]
  ''';

  // List<dynamic> dynamicList = jsonDecode(jsonString);
  final dynamicList = jsonDecode(jsonString);

  // Обработка вспех мэп из dynamicList через List.from
  // List<Map<String, dynamic>> mapList2  List<dynamic> dynamicList
  List<Map<String, dynamic>> mapList2 = List.from(dynamicList);
}

void example2() {
  final getRequest =
      http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  getRequest.then((value) {
    String jsonString = value.body;
    // print(jsonString);

    // // List<dynamic> dynamicList = jsonDecode(jsonString);
    final dynamicList = jsonDecode(jsonString);
    List<Map<String, dynamic>> mapList = List.from(dynamicList);

    print(mapList[68].keys);
  });
}


