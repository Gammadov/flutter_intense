import 'dart:io';
void main()
{
  int n = 0;
  print('Кто обладатель наибольшего количества золотых мячей?');
  print('1) Л. Месси');
  print('2) М. Ван Бастен');
  print('3) К-Х. Румменигге');
  print('4) Ф. Беккенбауэер');
  print('5) К. Роналду');
  print('Выберите правильный ответ');
  String x1=stdin.readLineSync().toString();
  if (x1=='1')
    {
      n+=1;
      print('правильно');
    }
  else
    {
      print('правильный ответ - 1');
    }
  print('Какой из этих клубов выиграл больше всего ЛЧ? ');
  print('1) Ливерпуль');
  print('2) Реал Мадрид');
  print('3) Бавария Мюнхен');
  print('4) Барселона');
  print('5) Милан');
  print('Выберите правильный ответ');
  String x2=stdin.readLineSync().toString();
  if (x2=='2')
  {
    n+=1;
    print('правильно');
  }
  else
  {
    print('правильный ответ - 2');
  }
  print('Кто последний обладатель кубка ЛЧ? ');
  print('1) Бавария Мюнхен');
  print('2) Челси');
  print('3) ПСЖ');
  print('4) Реал Мадрид');
  print('3) Ливерпуль');
  print('Выберите правильный ответ');
  String x3=stdin.readLineSync().toString();
  if (x3=='2')
  {
    n+=1;
    print('правильно');
  }
  else
  {
    print('правильный ответ - 2');
  }
  print('Какая сборная выиграла больше всего ЧМ? ');
  print('1) Германия');
  print('2) Бразилия');
  print('3) Франция');
  print('4) Италия');
  print('3) Англия');
  print('Выберите правильный ответ');
  String x4=stdin.readLineSync().toString();
  if (x4=='2')
  {
    n+=1;
    print('правильно');
  }
  else
  {
    print('правильный ответ - 2');
  }
  print('Какая забил больше всего голов за сборную? ');
  print('1) Ф. Пушкаш');
  print('2) А. Даеи');
  print('3) К. Роналду');
  print('2) З. Ибрагимович');
  print('3) Р. Левандовский');
  print('Выберите правильный ответ');
  String x5=stdin.readLineSync().toString();
  if (x5=='3')
  {
    n+=1;
    print('правильно');
  }
  else
  {
    print('правильный ответ - 3');
  }
  print('Ваш результат $n/5');
}