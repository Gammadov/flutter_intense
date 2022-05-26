import 'package:http/http.dart' as http;

void main() {
  // flutter_su();
  // reqres_in();

  jsonplaceholder().then((value) {
    print(value.statusCode);
    print(value.body);
  });
}

void flutter_su() async {
  print('ЗАПУСК flutter_su\n');

  final response = await http.post(
    Uri.parse('http://json.flutter.su/echo'),
    body: {'num': '123abc'},
  );

  print(response.statusCode);
  print(response.body);

  print('\nЗАВЕРШЕНИЕ flutter_su');
}

void reqres_in() {
  print('ЗАПУСК reqres_in\n');

  final postRequest = http.post(
    Uri.parse('https://reqres.in/api/users'),
    body: {'name': 'Anifa', 'job': 'BOSS'},
  );

  postRequest.then((response) {
    print(response.statusCode);
    print('');
    String cleanBody = response.body.substring(1, response.body.length - 1);
    List<String> listBody = cleanBody.split(',');
    for (var str in listBody) {
      print(str);
    }

    print('\nЗАВЕРШЕНИЕ reqres_in');
  });
}

Future<http.Response> jsonplaceholder() async {
  return await http.post(
    // Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    Uri(scheme: 'https', host: 'jsonplaceholder.typicode.com', path: '/posts'),
    body: {'title': '123', 'body': 'abc', 'userId': '098di'},
  );
}
