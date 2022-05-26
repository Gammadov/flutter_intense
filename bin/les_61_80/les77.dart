import 'dart:math';

void main() {
  print('код перед объектом Future');
  print('выполняется последовательно');

  var firstF = Future(() {
    print('асинхронное действие НАЧАЛО');
  });

  firstF.then((value) => print('асинхронное действие КОНЕЦ'));

  print('код после объекта Future');
  print('выполняется последовательно');

  var secondF = Future(star);
  print(secondF);
  secondF.then((value) => print('асинхронное действие 2 КОНЕЦ'));

  var thirdF = Future(rand100);
  print(thirdF);
  thirdF.then((value){
    print(value);
    print(endingMessage('thirdF'));
  });


  var fourthF = Future((){
    print(beginingMessage('fourthF'));
    return rand100();
  });
  print(fourthF);

  fourthF.then((value){
    print(value);
    print(endingMessage('fourthF'));
  });


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

String beginingMessage(String process) {
  return 'Начался процесс $process';
}

String endingMessage(String process) {
  return 'Процесс $process завершён';
}

int rand100() {
  return Random().nextInt(100);
}
