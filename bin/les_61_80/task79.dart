/*
void main() {
  funFuture(num: 1, sec: 2);
  // funFuture(num: 2, sec: 4);
  funAsyncAwait(4);
}

void funFuture({required int num, int sec = 1}) {
  print('before Future $num');
  Future.delayed(Duration(seconds: sec)).then((value) => print('Future $num'));
  print('after Future $num');
}

void funAsyncAwait(int sec) async {
  print('before Future 100');
  // await Future.delayed(Duration(seconds: sec));
  // print('Future 100');
  // print('after Future 100');

  Future.delayed(Duration(seconds: sec)).
  then((value) {
    print('Future 100');
    print('after Future 100');
  });
}

//
// void funAsync() async{
//   print('before Future 10');
//   Future.delayed(Duration(seconds: 1)).then((value) => print('Future 10'));
//   print('after Future 10');
// }


 */

import 'dart:io';

void main(){
  print('1111');
  File myFile = File('bin\\les_61_80\\text.txt');
  myFile.create(recursive: true);
  print('2222');

  myFile.writeAsString('contents ', mode: FileMode.append);
  myFile.readAsString().then((value) => print(value));
  // print(await myFile.readAsString());
  print('object');
}