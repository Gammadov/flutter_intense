//
// String serverData(){
//   print('типа данные с интернета');
//   return 'server data';
// }
//
// String fileData(){
//   print('типа чтение файла (данные из ОС)');
//   return 'file data';
// }
//
// void function() async{
//   Future<String> fut1 = Future(serverData);
//   print(fut1);
//   fut1.then((value) => print(value));
//
//   String fut2 = await Future(fileData);
//   print(fut2);
//   print('конец функции');
// }
//
//
// void main() {
//   print('1111');
//   print('2222');
//   // print('3333');
//   function();
//   print('4444');
//   print('5555');
// }

Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<void> main() async {
  final a = await sum(1, 4);
  print(a);
  final b = await sum(a, 9);
  print(b);
  final c = await sum(a, b);
  print(c);

  // final aF = sum(1, 4);
  // aF.then((a){
  //   print(a);
  //   final bF = sum(a, 9);
  //   bF.then((b){
  //     print(b);
  //     final cF = sum(a, b);
  //     cF.then((c) => print(c));
  //   });
  // });
}
