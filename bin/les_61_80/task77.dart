import 'dart:math';

void main(List<String> arguments) {
  print('код перед объектом Future');
  print('выполняется последовательно');
  var firstF = Future(() => print('асинхронное действие НАЧАЛО'));
  firstF.then((value) => print('асинхронное действие КОНЕЦ'));

  print('код после объекта Future');
  print('выполняется последовательно');

  var secondF = Future(star);
  print(secondF);
  secondF.then((value) => print('асинхронное действие2 КОНЕЦ'));

  var thirdF = Future(rand100);
  print(thirdF);
  thirdF.then((value) {
    print(value);
    print(endingMessage('thirdF'));
  });

  var fourthF = Future((){
    print(beginingMessage('fourthF'));
    return rand100();
  });
  print(fourthF);
  fourthF..then((value) {
    print(value);
    print(endingMessage('fourthF'));
  });


  // Future<int> firstFuture = Future<int>(add);
  // var secondFuture = Future(()=>print('object'));
  // firstFuture.then((value) => print(value));
  // print('завершение main');
  // print(secondFuture);

}


void star() {
  print('''
        .
       ,O,
      ,OOO,
'oooooOOOOOooooo'
  `OOOOOOOOOOO`
    `OOOOOOO`
    OOOO'OOOO
   OOO'   'OOO
  O'         'O
  ''');
}

String beginingMessage(String process) => 'Начался процесс $process';

String endingMessage(String process) => 'Процесс $process завершён';

int rand100() => Random().nextInt(100);