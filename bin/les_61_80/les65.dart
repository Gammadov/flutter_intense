// 1.
/*

import 'dart:io';

void main() {

  List<int> nums = [1, 10, 1000, 10000];
  elemTypes(nums);
  nums[2]; int x;

  List<String> lines = ['1234', 'qwer', 'asdf', 'zxcv'];
  elemTypes(lines);
  lines[1]; String s;

  List parts = [1, 1.5, 'Some text'];
  elemTypes(parts);
  parts[1]; Object obj;

  int number = parts[0];

}

void elemTypes(List l) {
  for (var element in l) {
    stdout.write(element.runtimeType);
    stdout.write(' ');
  }
  print('');
}

*/

// 2.1.
/*
void main(){
  Bananas<int> bunch = Bananas(1.5, 300);
  bunch.price;
  Bananas box = Bananas(20, '6 000');
  box.price;

  bunch.buy();
  box.buy();
}

class Bananas<T> {
  double weight;
  T price;

  Bananas(this.weight, this.price);

  void buy() {
    print('куплено $weight кг бананов по цене $price рублей');
  }
}
 */

// 2.2.
/*
void main(){
  Bananas<int> bunch = Bananas(1.5, 300, 0);
  print(bunch.price + bunch.some);
  Bananas box = Bananas(20, '6 000', 0.1);
  print(box.price + box.some);

  bunch.buy();
  box.buy();
}

class Bananas<T> {
  double weight;
  T price;
  T some;

  Bananas(this.weight, this.price, this.some);

  void buy() {
    print('куплено $weight кг бананов по цене $price рублей');
  }
}
 */

// 2.3.
/*
void main(){
  Bananas<double, int> bunch = Bananas(1.5, 300);
  bunch.weight; bunch.price;

  Bananas box = Bananas(20, '6 000');
  box.weight; box.price;

  bunch.buy();
  box.buy();
}

class Bananas<W, P> {
  W weight;
  P price;

  Bananas(this.weight, this.price);

  void buy() {
    print('куплено $weight кг бананов по цене $price рублей');
  }
}
 */

// 2.4.
/*
void main(){
  Bananas<int> bunch = Bananas(1.5, 300);
  bunch.price;
  Bananas box = Bananas(0.8, 3.2);
  box.price;

  bunch.buy();
  box.buy();
}

class Bananas<T extends num> {
  double weight;
  T price;

  Bananas(this.weight, this.price);

  void buy() {
    print('куплено $weight кг бананов по цене $price рублей');
  }
}

*/

// 3.
/*
void main(){
  // show(1, 0.2);
  // // show<int>(1, 0.2);

  // showSum(2, 5.2);
  // // showSum<int>(2, 5.2);
  // // showSum<double>(2, 5.2);

  // returnSum(-10, 0.0);
  // // returnSum<int>(-10, 0.0);
  // // returnSum<double>(-10, 0.0);
}

void show<T>(T arg1, T arg2){
  print('значение первого $arg1 и второго $arg2 агрумента');
}

void showSum<T extends num>(T arg1, T arg2){
  print('сумма первого и второго аргументов ${arg1 + arg2}');
}

T returnSum<T extends num>(T arg1, T arg2){
  return (arg1 + arg2) as T;
  // return arg1 + arg2;
}

*/


// import 'dart:io';
//
// void main(){
//   List<int> nums = [-27, 19, 12, 91];
//   elemTypes(nums);
//   nums[2]; int x;
//
//   List<String> lines = ['ghb', 'kb', 'xy', 'jjjjj'];
//   elemTypes(lines);
//   lines[0]; String char;
//
//   List parts = [-10, 0.1, 'aaaaaa'];
//   elemTypes(parts);
//   parts[2]; Object obj;
//   print(parts[0] + parts[2]);
// }
//
// void elemTypes(List l) {
//   for (var element in l) {
//     stdout.write(element.runtimeType);
//     stdout.write(' ');
//   }
//   print('');
// }
/**/


void main(){
  toScreen(-1, 0, '1', false);
  toScreen<bool>(-1, 0, true, false);
  sum(1, -4.5);
  sum<int>(1, 5);
  int x = sum(1, 5);
  double y = sum(1.0, 5);
  num k = sum(0.0, 1);
}


T sum<T extends num>(T arg1, T arg2){
  print(arg1 + arg2);
  return (arg1 + arg2) as T;
}


void toScreen<T>(int a, int b, T c, T d){
  print('a = $a, b = $b');
  print('c = $c, d = $d');
}