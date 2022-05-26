import 'package:http/http.dart' as http;

// void main(){
//   get1();
//   get2();
// }
//
//
// void get1(){
//   http.get(Uri.parse('https://catfact.ninja/fact')).then((response){
//     print(response.statusCode);
//     print(response.body);
//   });
// }
//
//
// void get2() async{
//   final response = await http.get(Uri.parse('https://catfact.ninja/fact'));
//   print(response.statusCode);
//   print(response.body);
// }

void main() {
  // task(200);
  taskUserId();
}

void catFact() {
  print('ЗАПУСК catFact\n');

  final getRequest = http.get(Uri.parse('http://json.flutter.su/echo'));
  getRequest.then((response) {
    print(response.statusCode);
    for (var key in response.headers.keys) {
      print('$key: ${response.headers[key]}');
    }
    print('');
    print(response.body);

    print('\nЗАВЕРШЕНИЕ catFact');
  });
}

void task(int todoNum) async {
  print('ЗАПУСК task\n');

  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$todoNum'));
  print(response.statusCode);
  print(response.body);

  print('\nЗАВЕРШЕНИЕ task');
}



void taskUserId() {
  print('ЗАПУСК taskUserId\n');

  // final getRequest = http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/?userId=1'));
  final getRequest = http.get(Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/todos/',
    queryParameters: {"userId" : '1'},
  ));
  getRequest.then((response) {
    print(response.statusCode);
    print('');
    print(response.body);

    print('\nЗАВЕРШЕНИЕ taskUserId');
  });
}