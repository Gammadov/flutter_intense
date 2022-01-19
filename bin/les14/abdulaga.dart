import 'dart:io';

void main() {
  print ('Вопрос1.В какой игре пользуются самым легким мячом?');
  String otvet1 = stdin.readLineSync().toString();
  int bal = 0;
  if (otvet1.toLowerCase() == 'tennis'){
    print('правильно');
    bal= bal+1;
  }
  else{
    print('Ответ неправильный');
    print ('правильный ответ: Tennis');
  }

  print ('Вопрос2.Как называют лидера команды?');
  String otvet2 = stdin.readLineSync().toString();
  if (otvet2.toLowerCase() == 'kapitan'){
    print('правильно');
    bal= bal+1;
  }
  else{
    print('Ответ неправильный');
    print ('правильный ответ: Kapitan');
  }

  print ('Вопрос3.Символ олимпиады из зверей – это?');
  String otvet3 = stdin.readLineSync().toString();
  if (otvet3.toLowerCase() == 'medved'){
    print('правильно');
    bal= bal+1;
  }
  else{
    print('Ответ неправильный');
    print ('правильный ответ: Медведь');
  }

  print ('Вопрос4.Сколько игороков в футбольном команде?');
  String otvet4 = stdin.readLineSync().toString();
  if (otvet4 == '11'){
    print('правильно');
    bal= bal+1;
  }
  else{
    print('Ответ неправильный');
    print ('правильный ответ: 11');
  }

  print('Набранные баллы:$bal из 4');

}