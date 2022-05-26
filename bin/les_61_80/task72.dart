import 'dart:io';

void main() {
  try {
    naturalArithmetic();
  }
  on NaturalNumberException {
    print('введено(ы) не натуральное(ые) число(а)');
  }
  on OperationException catch (e) {
    print(e);
  }
  catch (e, s) {
    print('возникла ошибка');
    print(e);
    print(s);
  }
  finally{
    print('сработает как в случае успеха, так и в случае проблем');
  }

  print('код после');
}

void naturalArithmetic() {
  stdout.write('введите слагаемое 1: ');
  int num1 = int.parse(stdin.readLineSync().toString());
  stdout.write('введите слагаемое 2: ');
  int num2 = int.parse(stdin.readLineSync().toString());

  if (num1 < 1 || num2 < 1)
    throw NaturalNumberException('это не натуральное число!');

  stdout.write('введите операцию + - * /  ');
  String operation = stdin.readLineSync().toString();

  Map<String, int> result = {
    '+': num1 + num2,
    '-': num1 - num2,
    '*': num1 * num2,
    '/': operation != '/' ? -1 : num1 ~/ num2,
  };

  if (!result.containsKey(operation))
    throw OperationException('операция указана неверно');

  print(result[operation]);
}

class NaturalNumberException implements Exception {
  String txt;

  NaturalNumberException(this.txt);

  @override
  String toString() {
    return 'NaturalNumberException ' + txt;
  }
}

class OperationException implements Exception {
  String txt;

  OperationException(this.txt);

  @override
  String toString() {
    return 'OperationException ' + txt;
  }
}
