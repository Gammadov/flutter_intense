import 'dart:io';

void main() {
  try {
    naturalArithmetic();
  } on NaturalNumberException {
    print('введено(ы) не натуральное(ые) число(а)');
  } on OperationException catch (e) {
    print(e);
  } catch (e) {
    print('возникла ошибка');
    print(e);
  } finally {
    print('сработает как в случае успеха, так и в случае проблем');
  }

  print('код после');
}

naturalArithmetic() {
  stdout.write('введите слагаемое 1: ');
  int num1 = int.parse(stdin.readLineSync().toString());
  stdout.write('введите слагаемое 2: ');
  int num2 = int.parse(stdin.readLineSync().toString());
  stdout.write('введите операцию + - * /  ');
  String operation = stdin.readLineSync().toString();

  if (num1 < 1 || num2 < 1)
    throw NaturalNumberException('введены не натуральные числа');

  Map<String, int> result = {
    '+': (num1 + num2),
    '-': (num1 - num2),
    '*': (num1 * num2),
    '/': (num1 ~/ num2),
  };

  if (!result.containsKey(operation))
    throw OperationException('не корректная операция');

  print(result[operation]);
}

class NaturalNumberException implements Exception {
  String message = '';

  NaturalNumberException(this.message) {
    if (message != '') message = ': ' + message;
  }

  @override
  String toString() {
    return 'NaturalNumberException' + message;
  }
}

class OperationException implements Exception {
  String message = '';

  OperationException(this.message) {
    if (message != '') message = ': ' + message;
  }

  @override
  String toString() {
    return 'OperationException' + message;
  }
}
