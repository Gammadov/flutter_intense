import 'dart:io';

void main(){
  print(1);
  print(2);
  print(3);
  print(4);

  // по Ёлчеву это заваривание кипятка
  var waitingFuture = Future<void>.delayed(Duration(seconds: 5));
  // по Ёлчеву это заваривание налить кипяток в кружке
  waitingFuture.then((value) => print('асинхронное действие'));
  print(5);
  print(6);

  // по Ёлчеву это пылесосить комнату
  sleep(Duration(seconds: 7));
  print(7);
  print(8);
  sleep(Duration(seconds: 7));
  print(9);
  print(10);

  // Мы распечатаем сообщение 'асинхронное действие', когда поток будет свободен, т.е. в конце



  // final fAct1 = Future.delayed(Duration(seconds: 3));
  // fAct1.then((value) => print('задача 1 выполнена'));
  //
  // final fAct2 = Future.delayed(Duration(seconds: 1));
  // fAct2.then((value) => print('задача 2 выполнена'));
  //
  // final fAct3 = Future.wait([fAct2]);
  // fAct3.then((value) => print('задача 3 выполнена'));

}