import 'dart:io';

void main(){
  stdout.write('Добро пожаловать на квест, введи свое имя: ');
  String name = stdin.readLineSync().toString();
  print('Приветствую тебя $name');
  print('Помни');
  print('Будут моменты где надо будет писать цифры :: что-то(1) .. что-то(2)');
  stdout.write('при готовности напиши go: ');
  String go = stdin.readLineSync().toString();
  if (go == 'go'){
    print('Как то раз в феврале в нашем районе отрубили свет, такое может происходить только при ч.п. ');
    print('зайдя в телефон я увидил, что какие то проблемы с людьми в больнице \nв этот момент кто позвонил с неизвестного номера');

    stdout.write('это был друг, он сказал что ему нужна помощь и нужно к ниму приехать :/\\ da /\\ net : ');
    String vib1 = stdin.readLineSync().toString();
    if (vib1 == 'da'){
      print('Скоро буду!!!');
      print('Вы быстро взяли немнго вещей и отправились в путь, путь лежал через очень туманный лес где плохо было видно,');

      stdout.write('по дороге вы попали в аварию, очнувшись вы стали :/\\кричать на помощ(1) /\\осмотреться (2): ');
      int var_avar = int.parse(stdin.readLineSync().toString());
      if (var_avar == 1){
        print('На ваш крик стали идти люди, они шли как-то медленно');
        print('они стали подходить и вы поняли что-то не так, ');

        stdout.write('осмотрев в машину вы взяли :/\\оружие и еду(1) /\\оружие и аптечку(2): ');
        int var_vib = int.parse(stdin.readLineSync().toString());
        if (var_vib == 1){
          print('Убежав от них вы стали думать где переночивать, эти поиски продлились');
          print('до утра, под утро вы перекусили, и у вас поднилась темпиратура, вы были так слабы');
          print('что не смогли перемещатся и ....');
          print('The End');
        }
        else if (var_vib == 2){
          print('Вы смогли сбежать от них это было не сложно, но все трудности впереди,');
          print('под утро ты стал чувствовать себя не очень хорошо, но ты воспользовался аптечкой');

          stdout.write('тебе нужно подумать о еде пойти  :/\\на поляну(1) /\\в лес(2): ');
          int var_eat = int.parse(stdin.readLineSync().toString());
          if (var_eat == 1){
            print('пойдя на поляну ты не нашел никаких ягод, так как еще холода,');
            print('на неболшом склоне ты увидел фургон ');

            stdout.write('Можно сходить и проверить есть ли там какая-то еда :/\\пойти (1) /\\не пойти(2): ');
            int var_auto = int.parse(stdin.readLineSync().toString());
            if (var_auto == 1){
              print('Подойдя к фургону ты открыл дверь и тем самым зацепил мину');
              print('The end');
            }
            else if (var_auto == 2){
              print('У тебя не было выбора ты и так ничего не находил');
              print('Подойдя к фургону ты открыл дверь и тем самым зацепил мину');
              print('The end');
            }
          }
          else if (var_eat == 2){
            print('Ты продолжил свой путь в лесу но ты так и ничего не находил');
            print('и ты решил подняться в гору');

            stdout.write('Там ты встретил оленя :/\\тихо(1) /\\громко(2): ');
            int var_gora = int.parse(stdin.readLineSync().toString());
            if (var_gora == 1){
              print('Пятаясь подкраться к оленю он убежал, вы остались без и потеряв всю надежду ты застрелился');
              print('The End');
            }
            else if (var_gora == 2){
              print('Вы его застрелили, чтоб поесть мясо надо спуститься вниз и зажечь кастер');
              print('туша была тяжелой, тебе нужны дровы для розжига костра,');

              stdout.write('вы моежете оставить мясо и прийти уже с дровами :/\\взять(1) /\\оставить и вернуться(2): ');
              int var_meat = int.parse(stdin.readLineSync().toString());
              if (var_meat == 1){
                print('Пытаясь поднять мясо вы упали на склоне, и повредили колени и спину, своим криком от боли вы');
                print('привлекли к себе много внимания...');
                print('The end');
              }
              else if (var_meat == 2){
                print('вы спустились в ле за дровами, поднявшись утром мясо было на месте, подойдя к ниму вы услышали');

                stdout.write('Бросай дрова и уходи :/\\бросить(1) /\\нет(2): ');
                int var_dead3 = int.parse(stdin.readLineSync().toString());
                if (var_dead3 == 1){
                  print('Вас подстрелили, чтоб вы не могли за ними проследить');
                  print('The End');
                }
                else if (var_dead3 == 2){
                  print('Вас убили');
                  print('The End');
                }
              }
            }
          }
        }
      }
      else if (var_avar == 2){
        print('Осмотревшись вы видите что они едят людей?!, вы тихо берете оружие, еду и аптечку');
        stdout.write('вы задумались где переночивать :/\\в машине(1) /\\пойти в путь(2): ');
        int var_sleep = int.parse(stdin.readLineSync().toString());

        if (var_sleep == 1){
          print('Вы снял с себя куртку чтоб укрыться и легли спать, вы проснулись от шума,');
          print('эти ганибалы пытались выломать стекло в вашей машине,');

          stdout.write('можно поробовать :/\\сбежать(1) /\\попытаться убить их(2): ');
          int var_danger = int.parse(stdin.readLineSync().toString());
          if (var_danger == 1){
            print('Вы смогли сбежать но... вас как-то подцепил их вирус,');

            stdout.write('вы в холдном лесу без куртки, вам очень холодно вы можете :/\\суицыд(1) /\\найти помощь(2): ');
            int var_dead = int.parse(stdin.readLineSync().toString());
            if (var_dead == 1){
              print('The End');
            }
            else if (var_dead == 2){
              print('Ты пытался найти помощь, но тебе было холодно и ты заражен');
              print('The End');
            }
          }
          else if (var_danger == 2){
            stdout.write('Вы привлекли к себе еще больше внимания этих ганибалов :/\\суицыд(1) /\\сбежать(2): ');
            int var_dead1 = int.parse(stdin.readLineSync().toString());
            if (var_dead1 == 1){
              print('The End');
            }
            else if (var_dead1 == 2){
              print('Как только ты выбрался тебя сожрали');
              print('The End');
            }
          }
        }
        else if (var_sleep == 2){
          print('Вы пошли в путь так как у вас была еда и лекарство в их поисках вы не нуждались,');
          print('1 МЕСЯЦ СПУСТЯ');
          print('В один из дней на вас напали группа охотников которые у вас потребовали вашу');

          stdout.write('еду и лекарство, на слова что вас не тронут :/\\дать(1) /\\нет(2): ');
          int var_dead2 = int.parse(stdin.readLineSync().toString());
          if (var_dead2 == 1){
            print('Вы отдали все что у вас было, но один из них выстрелил вам в ногу что-бы');
            print('вы не смогли проследить за ними, истекая кровью ты не долго жил ');
            print('The End');
          }
          else if (var_dead2 == 2){
            print('Тебя убили');
            print('The End');
          }
        }
      }
    }
    else if (vib1 == 'net'){
      stdout.write('через время тебе позвонили друзья и позвали в чайхану :/\\ da /\\ net : ');
      String var_net = stdin.readLineSync().toString();

      if (var_net == 'da'){
        print('После того посидели ты решил поехать домой и вызвал такси,');
        print('по дороге домой вы попали в аварию с очень тяжелыми послеедствиями\n');
        print('The End');
      }
      else if (var_net == 'net'){
        print('Ты остался дома \n');
        print('The End');
      }
    }
  }
}