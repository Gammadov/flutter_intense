import 'dart:io';

void main(List<String> arguments)
{
  print("Всех приветствую , меня зовут Абдуллаев Гамзат и сегодня я хочу представить вам собственную викторину , "
      "всего будет 5 вопросов ,формат ответа будет указан в самом вопросе");
  stdout.write ("Чтобы продолжить, назови свое имя(вводить на английском):");
  String name = stdin.readLineSync().toString();
  print("$name, Желаю удачи в викторине!");
  int summ = 0;
  stdout.write("Вопрос1: В каком году закончилась Великая Отечественаня война? (в ответе указать только год цифрами):");
  String otvet1 = stdin.readLineSync().toString();
  if (otvet1 == "1945")
  {
    print("Вы ответили верно, молодец!");
    summ+=10;
  }
  else
  {
    print("К сожалению ответ неверный");
  }
  stdout.write("Вопрос2: Каким символом обозначается в таблице Менделеева Цинк?:");
  String otvet2 = stdin.readLineSync().toString();
  if (otvet2.toLowerCase() == "zn")
  {
    print("Вы ответили верно, молодец!");
    summ+=10;
  }
  else
  {
    print("К сожалению ответ неверный");
  }
  stdout.write("Вопрос3: Сколько законов названо в честь Ньютона? (в ответе указать цифру):");
  String otvet3 = stdin.readLineSync().toString();
  if (otvet3 == "3")
  {
    print("Вы ответили верно, молодец!");
    summ+=10;
  }
  else
  {
    print("К сожалению ответ неверный");
  }
  stdout.write("Вопрос4: Сколько Мегабайтов в 2 Гигабайтах(в ответе указать только число):");
  String otvet4 = stdin.readLineSync().toString();
  if (otvet4 == "2048")
  {
    print("Вы ответили верно, молодец!");
    summ+=10;
  }
  else
  {
    print("К сожалению ответ неверный");
  }
  print("Вопрос5: Выберите из трех ниже указанных вариантов столицу Канады(в ответе укажите английскую букву):");
  print("a)Вашингтон        b)Оттава         c)Канберра");
  String otvet5 = stdin.readLineSync().toString();
  if (otvet5 == "b")
  {
    print("Вы ответили верно, молодец!");
    summ+=10;
  }
  else
  {
    print("К сожалению ответ неверный");
  }
  print("Итак, викторина окончена, давайте подытожим результаты и посчитаем количество баллов");
  print ("$name, вы набрали $summ баллов из 50");
  if(summ >=40)
  {
    print("Поздравляю $summ баллов очень неплохой результат!");
  }
  else
  {
    print("Не растраивайтесь , повезет в следующий раз!");
  }
}