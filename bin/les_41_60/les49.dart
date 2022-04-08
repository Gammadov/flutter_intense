import 'dart:math';

void main(){
  List<double> numbers = List.generate(7, (element) => element + 0.1);
  // print(numbers);

  List<int> intNums = List.generate(7, (element) => Random().nextInt(51) - 25);
  print(intNums);
}