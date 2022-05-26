import 'package:http/http.dart' as http;

void main() {
  // final getRequest = http.get(Uri.parse('https://catfact.ninja/fact'));
  // getRequest.then((response) {
  //   print(response.statusCode);
  //   for(var key in response.headers.keys){
  //     print('$key: ${response.headers[key]}');
  //   }
  //   print('');
  //   print(response.body);
  // });

  // final postRequest = http.post(
  //   Uri.parse('https://json.flutter.su/echo'),
  //   body: {'name':'Отправили название серверу','num':'10'},
  // );
  // postRequest.then((response) {
  //   print(response.statusCode);
  //   // for (var key in response.headers.keys) {
  //   //   print('$key: ${response.headers[key]}');
  //   // }
  //   // print('');
  //   print(response.body);

  // curl -X POST -d "title=Introducing Flutter 3" -d "body=The culmination of our journey to multiplatform UI development on phone, desktop, and web" -d "userId=1" https://jsonplaceholder.typicode.com/posts
  // curl -X POST -d "title=Introducing Flutter 3" -d "body=The culmination of our journey to multiplatform UI development on phone, desktop, and web" -d "userId=1" https://jsonplaceholder.typicode.com/todos
  //
  // final postRequest = http.post(
  //   Uri.parse('https://jsonplaceholder.typicode.com/posts'),
  //   body: {
  //     'title': 'Introducing Flutter 3!',
  //     'body': 'The culmination of our journey...',
  //     'userId': 'Tim Sneath',
  //   },
  // );
  // postRequest.then((response) {
  //   print(response.statusCode);
  //   print(response.body);
  // });

  catFact();
  // task();
  task(20);
  taskUserId(10);

}

// 1
void catFact() {
  // 1.3
  print('ЗАПУСК catFact\n');

  final getRequest = http.get(Uri.parse('https://catfact.ninja/fact'));
  getRequest.then((response) {
    print(response.statusCode);

    // 1.2
    for (var key in response.headers.keys) {
      print('$key: ${response.headers[key]}');
    }
    print('');
    // 1.2

    print(response.body);

    // 1.3
    print('\nЗАВЕРШЕНИЕ catFact');
  });
}

// 1.4 Сравнить catFact() с curl-запросом

// 2
/*
void task() async{
  print('ЗАПУСК task\n');
  // 2.1 https://jsonplaceholder.typicode.com/todos/4
  // 2.2 https://jsonplaceholder.typicode.com/todos/40  КАКОЙ ПАРАМЕТР МЕНЯЛСЯ?
  // 2.2 https://jsonplaceholder.typicode.com/todos/400 ЧТО ЗА КОД?
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  // 2.3 print(response.statusCode);
  print(response.body);
  print('\nЗАВЕРШЕНИЕ task');
}
 */

// 2.4
void task(int todoNum) async {
  print('ЗАПУСК task\n');
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$todoNum'));
  print(response.statusCode);
  print(response.body);
  print('\nЗАВЕРШЕНИЕ task');
}

// 2.4 Сравнить task(21) с curl-запросом https://jsonplaceholder.typicode.com/todos/21

// 3
void taskUserId(int userId) {
  print('ЗАПУСК taskUserId\n');

  // final getRequest = http
  //     .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/?userId=$userId'));

  final getRequest = http.get(Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: 'todos/',
    queryParameters: {'userId': userId.toString()},
  ));
  getRequest.then((response) {
    print(response.statusCode);
    print(response.body);
    print('\nЗАВЕРШЕНИЕ taskUserId');
  });
}

// 3.1 Сравнить taskUserId(5) с curl-запросом https://jsonplaceholder.typicode.com/todos/?userId=5