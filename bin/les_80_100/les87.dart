// /*
// import 'dart:convert';
// import 'dart:io';
//
// void main() {
//   final request = HttpClient().getUrl(Uri.parse('https://catfact.ninja/fact'));
//   request.then((value) {
//     final response = value.close();
//     response.then((value) {
//       final futureList = value.transform(utf8.decoder).toList();
//       futureList.then((value) => print(value.join()));
//     });
//   });
// }
//  */
//
// import 'package:http/http.dart' as http;
//
// void main() {
//   final getRequest = http.get(Uri.parse('https://catfact.ninja/fact'));
//   getRequest.then((response) {
//     print(response.statusCode);
//     for (var key in response.headers.keys) {
//       print('$key: ${response.headers[key]}');
//     }
//     print('');
//     print(response.body);
//   });
// }
//
//
//

import 'package:http/http.dart' as http;

void main() {
  // final getRequest = http.get(Uri.parse('https://catfact.ninja/fact'));
  // getRequest.then((response){
  //   print(response.statusCode);
  //   for (var key in response.headers.keys){
  //     print("$key ${response.headers[key]}");
  //   }
  //   print('');
  //   print(response.body);
  // });

  final postRequest = http.post(
    Uri.parse('http://json.flutter.su/echo'),
    body: {
      "name": 'Adil Anifa',
      "num" : 'fail!',
    },
  );
  postRequest.then((response) {
    print(response.statusCode);
    print('');
    print(response.body);
  });
}