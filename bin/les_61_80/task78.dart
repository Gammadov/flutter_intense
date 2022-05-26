void main() async{
  // print('0 + 1 = ${1 + 1}');
  // futureInBody(-1);
  // print('1 + 1 = ${0 + 1}');
  // // futureInBody(2);
  // asyncInBody();
  // print('2 + 1 = ${1 + 1}');
  // print('3 + 1 = ${2 + 1}');
  print('~~~~');
  print('Сейчас будет создана Future');
  var future = Future(serverData);
  future.then(
          (value) => print(value));
  print('код после Future');

  print('~~~~');

  print('|| Сейчас будет создана Future');
  var future2 = Future(serverData2);
  future2.then(
          (value) => print(value));
  print('|| код после Future');

  print('~~~~');

  print('Сейчас будет создана Future с await');
  String data = await Future(fileData);
  print(data);
  print('код после Future с await');
  print('~~~~');
}

String serverData(){
  print('типа данные с интернета');
  return 'server data';
}

String serverData2(){
  print('|| типа данные с интернета');
  return '|| server data';
}

String fileData(){
  print('типа чтение файла (данные из ОС)');
  return 'file data';
}

void futureInBody(int num) {
  print('$num Запуск функции futureInBody. Сейчас будет создана Future');
  var future = Future(serverData);
  future.then(
      (value) => print(value));
  print('$num код после Future');
  print('$num последняя команда в futureInBody');
}

void asyncInBody() async{
  print('Запуск функции asyncInBody. Следующая операция будет асинхронной');
  var future = await fileData();
  print(future);
  print('код после асинхронной операции');
  print('последняя команда в asyncInBody');
}