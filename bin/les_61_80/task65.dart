// 2.1.
// /*
void main(){
  Poster nature = Poster(width: 0.1, height: 60, price: 1);
  print(nature.width + nature.height);
  nature.price;
  Poster<int, String> vintage = Poster(width: 40, height: 55, price: '5');
  print(vintage.width + vintage.height);
}

class Poster<L extends num, P> {
  L  width, height;
  P price;

  Poster({required this.width, required this.height, required this.price});

  @override
  String toString() {
    return 'width = $width\nlength = $height\nprice = $price';
  }
}
 // */

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
