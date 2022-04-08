import 'dart:io';

void main() {
  int ball = 0;
  print('''──────────────▐█████───────
──────▄▄████████████▄──────
────▄██▀▀────▐███▐████▄────
──▄██▀───────███▌▐██─▀██▄──
─▐██────────▐███─▐██───██▌─
─██▌────────███▌─▐██───▐██─
▐██────────▐███──▐██────██▌
██▌────────███▌──▐██────▐██
██▌───────▐███───▐██────▐██
██▌───────███▌──▄─▀█────▐██
██▌──────▐████████▄─────▐██
██▌──────█████████▀─────▐██
▐██─────▐██▌────▀─▄█────██▌
─██▌────███─────▄███───▐██─
─▐██▄──▐██▌───────────▄██▌─
──▀███─███─────────▄▄███▀──
──────▐██▌─▀█████████▀▀────
──────███──────────────────
''');
  stdout.write(
      'Приветствую Вас на мини-викторине о киновселенной Marvel. Нажмите ENTER чтобы продолжить');
  String text = stdin.readLineSync().toString();
  print(
      '''1. В каком году был выпущен первый фильм «Железный человек», начиная с кинематографической вселенной Marvel?
1- 2005
2- 2008
3- 2010
4- 2012''');
  stdout.write('Ответ: ');
  int ch1 = int.parse(stdin.readLineSync().toString());
  if (ch1 == 2) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Увы, но нет. В 2008 году');
  stdout.writeln();

  print('''2. Как называется молот Тора?
1- ваны
2- Mjolnir
3- сонм богов
4- ведьма''');
  stdout.write('Ответ: ');
  int ch2 = int.parse(stdin.readLineSync().toString());
  if (ch2 == 2) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Нет, правильный ответ: Mjolnir, но всё еще впереди!');
  stdout.writeln();

  print(
      '''3. В «Невероятном Халке», что говорит Тони Таддеусу Россу в конце фильма?
1- Что он хочет изучать Халка
2- Что он знает о ЩИТЕ
3- Что они собирают команду
4- Что Фаддей должен ему деньги''');
  stdout.write('Ответ: ');
  int ch3 = int.parse(stdin.readLineSync().toString());
  if (ch3 == 3) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Увы, но нет. Он говорил что они собирают команду');
  stdout.writeln();

  print('''4. Из чего сделан щит Капитана Америки?
1- Adamantium
2- Карбонадий
3- прометий
4- Вибраниум ''');
  stdout.write('Ответ: ');
  int ch = int.parse(stdin.readLineSync().toString());
  if (ch == 4) {
    print('Слава Ваканде!');
    ball = ball + 1;
  } else
    print('Неправильно. Из Вибраниума');
  stdout.writeln();

  print(
      '''5. Прежде чем стать Виженом, как звали дворецкого из Железного Человека?
1- ГОМЕР
2- JARVIS
3- АЛЬФРЕД
4- MARVIN''');
  stdout.write('Ответ: ');
  int ch5 = int.parse(stdin.readLineSync().toString());
  if (ch5 == 2) {
    print('Отлично!');
    ball = ball + 1;
  } else
    print('Увы, но нет. Его звали JARVIS');
  stdout.writeln();

  print('''6. Каково настоящее имя Черной Пантеры?
1- Т'Чалла
2- М'Баку
3- Нджадака
4- Н'Джобу ''');
  stdout.write('Ответ: ');
  int ch6 = int.parse(stdin.readLineSync().toString());
  if (ch6 == 1) {
    print('Так Держать!');
    ball = ball + 1;
  } else
    print("Настоящее имя: Т'Чалла...");
  stdout.writeln();

  print(
      '''7. Какую инопланетную расу посылает Локи для вторжения на Землю в Мстителях?
1- Кри
2- Скруллы
3- Читаури
4- Флеркены''');
  stdout.write('Ответ: ');
  int ch7 = int.parse(stdin.readLineSync().toString());
  if (ch7 == 3) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Неправильно. Это были Читаури');
  stdout.writeln();

  print(
      '''8. Какое фальшивое имя использует Наташа, когда впервые встречается с Тони?
1- Натали Рушман
2- Наталья Романова
3- Николь Рохан
4- Ная Рабе''');
  stdout.write('Ответ: ');
  int ch8 = int.parse(stdin.readLineSync().toString());
  if (ch8 == 1) {
    print('Верно!');
    ball = ball + 1;
  } else
    print('Увы, но нет. Она представилась Натали Рушман');
  stdout.writeln();

  print(
      '''9. Где Пегги говорит Стиву, что хочет встретиться с ним для танца, прежде чем он разобьется на самолёте?
1- Cotton Club
2- Копакабана
3- Эль Марокко
4- Аист клуб''');
  stdout.write('Ответ: ');
  int ch9 = int.parse(stdin.readLineSync().toString());
  if (ch9 == 4) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Это был Аист клуб.');
  stdout.writeln();

  print('''10. О каком городе часто вспоминают Соколиный Глаз и Черная Вдова?
1- Прага
2- Стамбул
3- Будапешт
4- Соковия ''');
  stdout.write('Ответ: ');
  int ch10 = int.parse(stdin.readLineSync().toString());
  if (ch10 == 3) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Увы, но нет. Это был Будапешт');
  stdout.writeln();

  print(
      '''11. Какие три предмета, по словам Рокеты, ему нужны, чтобы сбежать из тюрьмы?
1- Карта безопасности, вилка и голеностопный монитор
2- Защитная полоса, батарея и протез ноги
3- Бинокль, детонатор и протез ноги
4- Нож, провода кабеля и микстейп Питера''');
  stdout.write('Ответ: ');
  int ch11 = int.parse(stdin.readLineSync().toString());
  if (ch11 == 2) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Нет. Правильный ответ под номером 2');
  stdout.writeln();

  print('''12. Кого убил Локи в Мстителях?
1- Maria Hill
2- Ник Фьюри
3- Агент Коулсон
4- Доктор Эрик Сельвиг''');
  stdout.write('Ответ: ');
  int ch12 = int.parse(stdin.readLineSync().toString());
  if (ch12 == 3) {
    print('Верно!');
    ball = ball + 1;
  } else
    print('На самом деле, он убил Агента Коулсона');
  stdout.writeln();

  print('''13. Кто сестра Черной Пантеры?
1- Сюри
2- Nakia
3- Рамонда
4- Okoye''');
  stdout.write('Ответ: ');
  int ch13 = int.parse(stdin.readLineSync().toString());
  if (ch13 == 1) {
    print('Правильно!');
    ball = ball + 1;
  } else
    print('Нет, ее зовут Сюри');
  stdout.writeln();

  print('''14. Кем был доктор Стивен Стрендж?
1- Нейрохирург
2- Кардиоторакальный хирург
3- Травматолог
4- Пластический хирург   ''');
  stdout.write('Ответ: ');
  int ch14 = int.parse(stdin.readLineSync().toString());
  if (ch14 == 1) {
    print('Отлично!');
    ball = ball + 1;
  } else
    print('Увы, но нет. Его предыдущая профессия: Нейрохирург');
  stdout.writeln();

  print('Вы набрали $ball баллов!');
  if (ball > 8) {
    print('Это значит что вы настоящий фанат Marvel :)');
  } else
    print(
        'Вы не очень интересуетесь киновселенной Marvel. Наверное вы фанат DC :)');
}
