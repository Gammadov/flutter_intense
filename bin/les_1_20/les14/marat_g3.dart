import 'dart:io';

void main() {
  int sum = 0;
  print('Добро пожаловать в квест.');
  print('Всего вопросов 5');
  print('Вопрос 1: Назовите столицу Канады ?');
  String otvet1 = stdin.readLineSync().toString();
  if (otvet1.toLowerCase() == 'ottawa') {
    print('верно');
  } else {
    print('правильный ответ: Ottava');
  }
  print('Вопрос 2: Последний обладатель "Золотого мяча" ?');
  String otvet2 = stdin.readLineSync().toString();
  if (otvet2.toLowerCase() == 'lionel messi') {
    print('верно');
  } else {
    print('правильный ответ: Lionel Messi');
  }
  print('Вопрос 3: Сколько крыльев у пчелы ?');
  String otvet3 = stdin.readLineSync().toString();
  if (otvet3.toLowerCase() == '4') {
    print('верно');
  } else {
    print('правильный ответ: 4');
  }
  print('Вопрос 4: На логотипе какой операционной системы изображен пингвин ?');
  String otvet4 = stdin.readLineSync().toString();
  if (otvet4.toLowerCase() == 'linux') {
    print('верно');
  } else {
    print('правильный ответ: Linux');
  }
  print('Вопрос 5: Cамое высокое дерево в мире ?');
  String otvet5 = stdin.readLineSync().toString();
  if (otvet5.toLowerCase() == 'sequoia') {
    print('верно');
  } else {
    print('правильный ответ: sequoia');
  }
  if (otvet1 == 'ottawa') {
    sum++;
  }
  if (otvet2 == 'lionel messi') {
    sum++;
  }
  if (otvet3 == '4') {
    sum++;
  }
  if (otvet4 == 'linux') {
    sum++;
  }
  if (otvet5 == 'sequoia') {
    sum++;
  }
  if (sum != 0) {
    print('Викторина закончилась, вы ответили правильно на $sum вопросов');
  }
  else {
    print('Ни один вопрос не верный');
  }
}