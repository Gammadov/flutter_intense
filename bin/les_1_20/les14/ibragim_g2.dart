import 'dart:io';
void main() {
print('сколько длилась 100 летняя война?');
stdout.write('введите ответ: ');
int num=int.parse(stdin.readLineSync().toString());
    int ball=0;ball=ball+1;
if(num==116){print('правильно');print('у вас $ball балл');}
else{if(num!=116){print('НЕПРАВИЛЬНО!!! привильный ответ 116');}}



  print('сколько килобайт в 1 гигабайте?');
  stdout.write('введите ответ: ');
  int num2=int.parse(stdin.readLineSync().toString());
  ball=ball+1;
  if(num2==2048){print('правильно');print('у вас $ball балла');}
  else{if(num2!=2048){print('НЕПРАВИЛЬНО!!! привильный ответ 2048');}}


  print('сколько дней в високосном году?');
  stdout.write('введите ответ: ');
  int num3=int.parse(stdin.readLineSync().toString());
  ball=ball+1;
  if(num3==366){print('правильно');print('у вас $ball балла');}
  else{if(num3!=366){print('НЕПРАВИЛЬНО!!! привильный ответ 366');}}



  print('сколько лет длилась ВОВ?');
  stdout.write('введите ответ: ');
  int num4=int.parse(stdin.readLineSync().toString());
  ball=ball+1;
  if(num4==4){print('правильно');print('у вас $ball балла');}
  else{if(num4!=4){print('НЕПРАВИЛЬНО!!! привильный ответ 4 года' ) ;}}

}