import 'dart:io';

void main(){
  int ball=0;
  print('''Какое животное всю жизнь питается только листьями эвкалипта?
  1)Панда
  2)Коала
  3)Ленивец
  4)Белка-летяга
  ''');
  String otvet1 = stdin.readLineSync().toString();
  if(otvet1.toLowerCase()=='2'){
    ball=ball+1;
    print('Правильно!');
  }else {print('Правильный ответ: Коала');}


  print('''На какой планете регуярно идут алмазные дожди?
  1)Меркурий
  2)Венера
  3)Юпитер
  4)Уран
  ''');
  String otvet2 = stdin.readLineSync().toString();
  if(otvet2.toLowerCase()=='3'){
    ball=ball+1;
    print('Правильно!');
  }else {print('Правильный ответ: Юпитер');}


  print('''Что символизируют пять колец на олимпийском флаге?
  1)Страны
  2)Части света
  3)Города
  4)Виды спорта
   ''');
  String otvet3 = stdin.readLineSync().toString();
  if(otvet3.toLowerCase()=='2'){
    ball=ball+1;
    print('Правильно!');
  }else {print('Правильный ответ: Части света');}


  print('''Какая планета вращается по часовой стрелке
  1)Меркурий
  2)Уран
  3)Юпитер
  4)Венера
  ''');
  String otvet4 = stdin.readLineSync().toString();
  if(otvet4.toLowerCase()==''){
    ball=ball+1;
    print('Правильно!');
  }else {print('Правильный ответ: Венера');}


  print(''' Какая птичка самая маленькая в мире?
  1)Колибри
  2)Королёк
  3)Пеночка
  4)Вьюрок
  ''');
  String otvet5 = stdin.readLineSync().toString();
  if(otvet5.toLowerCase()=='1'){
    ball=ball+1;
    print('Правильно!');

  }else {print('Правильный ответ: Колибри');}

  print('Ваш результат: $ball');


}