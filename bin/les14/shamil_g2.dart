import 'dart:io';

  void main() {
    int ball=0;
    //Вопрос 1
    print('Вопрос 1: ');
    print('Какую планету мы называем красной?');
  stdout.write('Ответ: ');
  String answer1 = stdin.readLineSync().toString();
  if(answer1.toLowerCase() == 'mars'){
    print('ВЕРНО');
    ball = ball+1;
  }
  else{
    print('Не верно');
  }

  //Вопрос 2
    print('Вопрос 2 ');
    print('Если не считать Плутон, сколько планет в Солнечной системе?');
  stdout.write('Ответ: ');
  int answer2 = int.parse(stdin.readLineSync().toString());
  if(answer2 == 8){
    print('ВЕРНО');
    ball = ball+1;
  }
  else{
    print('Не верно');
  }

  //Вопрос 3
    print('Вопрос 3: ');
    print('Как называется сила, которая удерживает нас на поверхности Земли?');
  stdout.write('Ответ: ');
    String answer3 = stdin.readLineSync().toString();
  if(answer3.toLowerCase() == 'gravitatsiya'){
    print('ВЕРНО');
    ball = ball+1;
  }
  else{
    print('Не верно');
  }
    //Вопрос 4
    print('Вопрос 4: ');
  print('Какая планета в Солнечной системе самая маленькая?');
  stdout.write('Ответ: ');
    String answer4 = stdin.readLineSync().toString();
    if(answer4.toLowerCase() == 'mercuriy'){
    print('ВЕРНО');
    ball = ball+1;
  }
  else{
    print('Не верно');
  }

  //Вопрос 5
    print('Вопрос 5: ');
  print('Какая планета находится ближе всего к Солнцу?');
  stdout.write('Ответ: ');
    String answer5 = stdin.readLineSync().toString();
    if(answer5.toLowerCase() == 'mercuriy'){
    print('ВЕРНО');
    ball = ball+1;
  }
  else{
    print('Не верно');
  }

  print('Вы ответили правильно на $ball вопросов');

}
