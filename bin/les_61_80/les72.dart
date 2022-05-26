void main(){
  throw MyException('сообщение');
}

class MyException implements Exception{
  String message;
  MyException(this.message);

  @override
  String toString() {
    return message;
  }
}


// int myFunc(int a, int b){
//   assert(b != 0, 'Деление на ноль');
//   return a ~/ b;
// }
//
// void main(List<String> arguments) {
//   print(myFunc(6, 0));
// }
