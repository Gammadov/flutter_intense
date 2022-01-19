import 'dart:io';

void main() {
  String answer, name;
  int count = 0, score = 0;

  print('''  Добро пожаловать в игру-викторину!
  Отвечайте на вопросы и зарабатывайте баллы!
  Ответы принимаются ТОЛЬКО латинскими буквами
  * Каждый верный ответ прибавляет 20 баллов
  * Каждая ошибка отнимает 10 баллов
   ''');
  stdout.write('  Введите имя: ');
  name = stdin.readLineSync().toString();
  print(''' 
  Итак, $name, первый вопрос:''');

  print('''  Какой цветок является национальным
  символом Японии?''');
  stdout.write('  Введите ответ: ');
  answer = stdin.readLineSync().toString();
  if (answer.toLowerCase() == 'sakura') {
    count++;
    score += 20;
    print('''  ВЕРНО!
    Вы заработали +20 баллов
    Ваш счет: $score баллов''');
  } else {
    score -= 10;
    print('''  НЕВЕРНО
    Правильный ответ: Sakura
    Ваш счет: $score баллов''');
  }

  print(' ');
  print('''  Сколько полос на флаге США?''');
  stdout.write('  Введите ответ: ');
  answer = stdin.readLineSync().toString();
  if (answer.toLowerCase() == '13') {
    count++;
    score += 20;
    print('''  ВЕРНО!
    Вы заработали +20 баллов
    Ваш счет: $score баллов''');
  } else {
    score -= 10;
    print('''  НЕВЕРНО
    Правильный ответ: 13
    Ваш счет: $score баллов''');
  }

  print(' ');
  print('''  Как называется национальное животное Австралии?''');
  stdout.write('  Введите ответ: ');
  answer = stdin.readLineSync().toString();
  if (answer.toLowerCase() == 'kenguru') {
    count++;
    score += 20;
    print('''  ВЕРНО!
    Вы заработали +20 баллов
    Ваш счет: $score баллов''');
  } else {
    score -= 10;
    print('''  НЕВЕРНО
    Правильный ответ: Kenguru
    Ваш счет: $score баллов''');
  }

  print(' ');
  print('''  У какой из древних цивилизаций не было письменности?
  1) Инков
  2) Ацтеков
  3) Египтян
  4) Римлян
  ВНИМАНИЕ! Введите только номер верного ответа!''');
  stdout.write('  Введите ответ: ');
  answer = stdin.readLineSync().toString();
  if (answer.toLowerCase() == '1') {
    count++;
    score += 20;
    print('''  ВЕРНО!
    Вы заработали +20 баллов
    Ваш счет: $score баллов''');
  } else {
    score -= 10;
    print('''  НЕВЕРНО
    Правильный ответ: 1 (Инки не имели письменности)
    Ваш счет: $score баллов''');
  }

  print(' ');
  print('  $name, соберитесь, последний вопрос:');
  print('''  В каком году началась Вторая Мировая война?''');
  stdout.write('  Введите ответ: ');
  answer = stdin.readLineSync().toString();
  if (answer.toLowerCase() == '1939') {
    count++;
    score += 20;
    print('''  ВЕРНО!
    Вы заработали +20 баллов
    Ваш счет: $score баллов''');
  } else {
    score -= 10;
    print('''  НЕВЕРНО
    Правильный ответ: 1939
    Ваш счет: $score баллов''');
  }

  print(' ');
  print('''КОНЕЦ ИГРЫ!
  $name, вы дали $count правильных ответов
  Ваш счет: $score баллов''');
}