import 'dart:io';

main(){
  stdout.write("ПИСАТЬ НА АНГЛ");
  print(" ");
  print(" ");
  stdout.write("Добро пожаловать на викторину! Представьтесь пожалуйста -  ");
  String otvet = stdin.readLineSync().toString();
  print("Привет,$otvet! Удачной игры!");
  print(" ");
  print(" ");
  stdout.write("ВОПРОС 1");
  print(" ");
  print("Сколько органов чувств у человека? (Введите цифру) - ");
  String otvet1 = stdin.readLineSync().toString();
  int ball = 0;
  if(otvet1.toLowerCase() =='5'){
    print("Молодец, так держать!!! У вас : ${(ball= ball+1)}");
  }else{
    print("Неправильно! Правильный ответ 5 ! Глаза, нос, уши, язык,кожа");
  }
  print(" ");
  print(" ");
  stdout.write("ВОПРОС 2");
  print(" ");
  print("Какой орган позволяет человеку чувстовать запах хлеба, цветов? ");
  String otvet2 = stdin.readLineSync().toString();
  if(otvet2.toLowerCase() == 'nose') {
    print("У тебя великолепно получается! У вас : ${(ball= ball+1)}");
  } if(otvet2.toLowerCase() == 'nos') {
    print("У тебя великолепно получается! У вас : ${(ball= ball+1)}");
  }else{
    print("Не расстраивайся, у тебя все получится! Правильный ответ - nose !");
  }
  print(" ");
  print(" ");
  stdout.write("ВОПРОС 3");
  print(" ");
  print("Кто родной брат кашля? ");
  String otvet3 = stdin.readLineSync().toString();
  if(otvet3.toLowerCase() == 'nasmork'|| otvet3.toLowerCase() == 'nacmork' || otvet3.toLowerCase() == 'nasmorc' ||otvet3.toLowerCase() =='nacmorc'||otvet3.toLowerCase() =='snuffle'|| otvet3.toLowerCase() =='rheum'|| otvet3.toLowerCase() == 'runny nose' ) {
    print("Как здорово получилось! Ты большой молодец. У вас : ${(ball= ball+1)}" );
  }else {
    print("Все еще впереди ! Правильный ответ - nasmork !");
  }
  print(" ");
  print(" ");
  stdout.write("ВОПРОС 4");
  print(" ");
  print("Когда человек выше ростом - утром(morning) или вечером(evening)?");
  String otvet4 = stdin.readLineSync().toString();
  if(otvet4.toLowerCase() == 'morning') {
    print("Ты сегодня прыгнул выше головы! У вас : ${(ball= ball+1)}");
  } else {
    print("Выше голову, чувак! Правильный ответ - morning !");
  }
  print(" ");
  print(" ");
  stdout.write("ВОПРОС 5");
  print(" ");
  print("Что появляется , если не мыть руки?");
  String otvet5 = stdin.readLineSync().toString();
  if(otvet5.toLowerCase() == 'microbe'||otvet5.toLowerCase() == 'microb'|| otvet5.toLowerCase() == 'microbi'|| otvet5.toLowerCase() == 'mikrobe'||otvet5.toLowerCase() == 'mikrob'||otvet5.toLowerCase() == 'germs'||otvet5.toLowerCase() == 'mikrobi' ) {
    print("Потрясающе! У вас : ${(ball= ball+1)} ");
  } else {
    print("Следующий раз будет лучше! Правильный ответ - microbe !");
  }

  print(" ");
  print(" ");

  stdout.write("Спасибо за игру,$otvet. У вас $ball балл");
  print(" ");
  print(" ");

}