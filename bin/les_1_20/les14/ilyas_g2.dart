import 'dart:io';



void main(List<String> arguments) {


  int sum = 0;

  print('Тест по истории');
  print('');
  print('');
  print('Вопрос 1');
  print('');
  print('Какую фамилию носил Петр I?');
  print('1. Романов'); //+
  print('2. Рюриков');
  print('3. Павлович');
  print('4. Николаевич');
  stdout.write('Введите ответ: ');
  int answer1 = int.parse(stdin.readLineSync().toString());
  if(answer1==1){
    ++sum;
  }



  print('');
  print('');
  print('Вопрос 2');
  print('');
  print('В какой стране впервые стали пить чай из фарфоровых чашек?');
  print('');
  print('1. Греция');
  print('2. Англия');
  print('3. Китай'); //+
  print('4. Япония');
  stdout.write('Введите ответ: ');
  int answer2 = int.parse(stdin.readLineSync().toString());
  if(answer2==3){
    ++sum;
  }


  print('');
  print('');
  print('Вопрос 3');
  print('');
  print('Что произошло в 1917 году в СССР?');
  print('');
  print('1. СССР вступил в первую мировую войну');
  print('2. Октябрьская революция');  //+
  print('3. СССР вступил в войну с японией');
  print('4. Выход из обихода золотых рублей');
  stdout.write('Введите ответ: ');
  int answer3 = int.parse(stdin.readLineSync().toString());
  if(answer3==2){
    ++sum;
  }



  print('');
  print('');
  print('Вопрос 4');
  print('');
  print('В каком году произошло ледовое побоище?');
  print('');
  print('1. 1353');
  print('2. 1380 ');
  print('3. 1240 ');
  print('4. 1242 ');  //+
  stdout.write('Введите ответ: ');
  int answer4 = int.parse(stdin.readLineSync().toString());
  if(answer4==4){
    ++sum;
  }

  print('');
  print('');
  print('Вопрос 5');
  print('');
  print('Какой город являлся столицей древней Руси до 882 года?');
  print('');
  print('1. Киев');
  print('2. Ростов');
  print('3. Великий Новгород');
  print('4. Муром');
  stdout.write('Введите ответ: ');
  int answer5 = int.parse(stdin.readLineSync().toString());
  if(answer5==3){
    ++sum;
  }
  print('');
  print('');
  print('Вы ответили верно на $sum вопросов из 5');


}