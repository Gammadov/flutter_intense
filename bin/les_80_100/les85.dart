import 'package:http/http.dart' as http;

void catFact() async{
  var fact = await http.get(Uri.parse('https://catfact.ninja/fact'));
  print(fact.body);
}

void main(){
  catFact();
}

// http.Response catBreeds(){
//   var future = http.get(Uri.parse('https://catfact.ninja/breeds'));
//   // http.Response Breeds;
//   return future.then((value) => value);
// }
//
// void main(){
//   var Breeds = catBreeds();
//   print(Breeds);
//   Breeds.then((value) => print(value.body));
// }