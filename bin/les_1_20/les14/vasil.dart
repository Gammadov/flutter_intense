import 'dart:io';

void main() {
  stdout.write('Крепость семи братьев и одной сестры'.toUpperCase());
  String a1 = stdin.readLineSync().toString();
  stdout.write('Недалеко от села Хучни находилась крепость, '
      'известная под названием "Крепость семи братьев", в которой '
      'жили семь братьев с красавицей сестрой.');
  String a2 = stdin.readLineSync().toString();
  stdout.write('Шелковистые волосы девушки были настолько длинные, что она, '
      'желая достать воду, привязывала кувшин к косам и спускала его в реку.');
  String a3 = stdin.readLineSync().toString();
  stdout.write('Братья слыли признаными богатырями и умелыми воинами, '
      'они защищали окресные села от врагов.');
  String a4 = stdin.readLineSync().toString();
  stdout.write('Вы предводитель вражеского племени и ваша задача: '
      'захватить крепость, защищаемую братьями.');
  String a5 = stdin.readLineSync().toString();
  stdout.write('Ваши действия (введите цифру с выбранным вариантом):\n');
  String a6 = stdin.readLineSync().toString();
  stdout.write('1 - сразиться с братьями в честном бою;\n');
  stdout.write('2 - влюбить в себя красавицу сестру.\n');
  var n1 = int.parse(stdin.readLineSync().toString());
  if (n1==2) {
    print('Первый шаг на пути к захвату крепости сделан.');
    String a7 = stdin.readLineSync().toString();
    stdout.write('Ну чтож, вы покорили сердце красавицы. '
        'Ваши дальнейшие дествия:\n');
    String a8 = stdin.readLineSync().toString();
    stdout.write('1 - уговорить сестру подсыпать яд в еду братьям;\n');
    stdout.write('2 - уговорить сестру залить соленую воду в дула ружей '
        'и ножны шашек братьев, дабы спасти их.\n');
    var n2 = int.parse(stdin.readLineSync().toString());
    if (n2==2) {
      print('да вы хитрец, обезоружили братьев');
      String a9 = stdin.readLineSync().toString();
      stdout.write('Братья обезоружены и крепость захвачена. '
          'Ваши дальнейшие дествия:\n');
      String a10 = stdin.readLineSync().toString();
      stdout.write('1 - убить братьев и сестру;\n');
      stdout.write('2 - жить с красавицей женой и ее братьями в мире '
          'и согласии.\n');
      var n3 = int.parse(stdin.readLineSync().toString());
      if (n3==1) {
        print('цель выполнена, ведь горцы не покоряются захватчику, а девушка, '
            'предавшая братьев, не может быть верной кому-либо другому.');
      }
      else {print('вольный орел не будет жить в клетке. '
          'ваша доброта вас подвела');}
    }
    else {print('вы просчитались, любовь красавицы к вам не на столько сильна, '
        'чтобы предать родственные узы.');}
  }
  else {print('упс...фиаско. вы не настолько искусны в сражении, '
      'как эти братья');}
}