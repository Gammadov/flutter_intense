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

  // postRequest();
  // reqres_in();
  
  jsonplaceholder().then((response) {
    print(response.statusCode);
    print('');
    print(response.body);
  });
}

// FOR API TESTS
void postRequest() async {
  final response = await http.post(
    Uri.parse('https://reqres.in/api/users'),
    body: {
      "name": 'Adil Anifa',
      "job": 'fail!',
    },
  );

  print(response.statusCode);
  print('');
  print(response.body);
}

Future<http.Response> jsonplaceholder() async {
  final response = await http.post(
    Uri(scheme: 'https', host: 'jsonplaceholder.typicode.com', path: 'posts'),
    body: {
      'title': 'Introducing Flutter 3!',
      'body': 'The culmination of our journey...',
      'userId': 'Tim Sneath',
    },
  );

  return response;
}

void reqres_in() {
  final request = http.post(
    Uri.parse('https://reqres.in/api/users'),
    body: {
      "name": 'Adil Anifa',
      "job": 'fail!',
    },
  );

  request.then((response) {
    print(response.statusCode);
    print('');
    String body = response.body.substring(1, response.body.length - 1);
    for (var str in body.split(',')) {
      print(str);
    }
    // print(response.body.split(','));
  });
}

void flutter_su() async {
  final response = await http.post(
    Uri.parse('http://json.flutter.su/echo'),
    // body: {
    //   "name": 'Adil Anifa',
    //   "num": 'fail!',
    // },
  );

  print(response.statusCode);
  print('');
  print(response.body);
}
