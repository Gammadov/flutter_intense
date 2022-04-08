void main() {
  print('11111111111111111');
  try {
    print(1 ~/1);
  }
  on IntegerDivisionByZeroException{
    print('ЧС: деление на 0 ');
  }
  catch(e){
    print('Ловить исключение');
    print(e);
  }
  finally{
    print('завершаем дела а-ля закрыть файл');
  }
  print('22222222222222222');
  // throw FormatException('просто так создал ЧС');
  throw ViNePonimayete();
}


class ViNePonimayete implements Exception{
  @override
  String toString() {
    return 'это другое';
  }
}