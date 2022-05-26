import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  photos();
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

  final listDynamic = jsonDecode(jsonSchedule);

  List<Map<String, dynamic>> listMap = [];
  for(var map in listDynamic){
    listMap.add(map as Map<String, dynamic>);
  }

  print(listMap);
  print(listMap[3].length);
  print(listMap[3].keys);
}



void photos() async{

  final getRequest = http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  getRequest.then((value){
    String jsonString = value.body;
    // print(jsonString);

    // // List<dynamic> dynamicList = jsonDecode(jsonString);
    final dynamicList = jsonDecode(jsonString);
    List<Map<String, dynamic>> mapList = List.from(dynamicList);

    print(mapList);
    print(mapList[68].keys);

  });
}
