// import 'dart:io';

// void main(){
//   // print('...до того был код');
//   // // print(double.parse('one point four'));
//   // // print(5 ~/ 2);
//   // // print(5 ~/ 0);
//   // // print([10, 20, 30][1]);
//   // // print([10, 20, 30][3]);
//   // // print(double.parse('1.4'));
//   // try {
//   //   print('START');
//   //   print(double.parse('one point four'));
//   // }
//   // catch(e){
//   //   print('УПСи');
//   // }
//   // finally{
//   //   print('END');
//   // }
//   // print('после того был код...');
//   String txt = stdin.readLineSync().toString();
//   try {
//     int number = int.parse(txt);
//     print(2134 ~/ number);
//   }
//   on IntegerDivisionByZeroException {
//     print('деление на ноль!');
//   }
//   on FormatException{
//     print('а тут ввели не цифры и');
//   }
//
//   print('The end');
// }
void main(){
  print('BEFORE');
  print('...'); // строка с опасным кодом


  try{
    // TODO something
  }
  on Exception {}
  on Error catch(e){}
  catch(e){}
  // finally{}

  print('AFTER');
}
