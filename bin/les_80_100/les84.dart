import 'package:http/http.dart' as http;

// void test() async {
//   var url = Uri.parse('https://example.com/whatsit/create');
//   var response =
//       await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
//   print('Response status: ${response.statusCode}');
//   print('Response body: ${response.body}');
//
//   print(await http.read(Uri.parse('https://example.com/foobar.txt')));
// }


void request() async{
  var response = await http.get(Uri.parse('https://json.flutter.su/echo'));
  print(response.body);
}

void main(){
  print('дело 1');
  request();
  print('дело 2');
  print('дело 3');
}
