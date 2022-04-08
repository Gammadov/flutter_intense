// void main() {
//   Vesta black = Vesta(color: 'black', price: 5000000);
//   Vesta white = Vesta(color: 'white', price: 4000000);
//   Vesta old = Vesta(color: 'white', price: 700000);
//   black.beep(); white.model; old.beep();
//
//   print(Vesta.quantity);
// }
//
// class Car {
//   String model;
//   String color;
//   int price;
//
//   Car(this.model, this.color, this.price);
//
//   void beep() => print('beep!');
// }
//
// class Vesta extends Car {
//
//   static int _quantity = 0;
//
//   static int get quantity => _quantity;
//
//   Vesta({required String color, required int price})
//       : super('Lada Vesta', color, price){
//     Vesta._quantity += 1;
//   }
// }
//
//
// class Colors{
//   static String red = 'red';
//   static String orange = 'orange';
//   static String blue = 'blue';
// }

void main (){
  Bananas first = Bananas(0.8);
  Bananas second = Bananas(1.5);
  Bananas third = Bananas(2);

  print(first.weight);
  second.buy();

  Bananas.price;
  Bananas.price = 130;

}

class Bananas{
  double weight;
  static int _price = 160;

  static int get price => _price;
  static set price(int val) => _price = val;

  Bananas(this.weight);

  void buy(){
    print('куплено $weight кг бананов');
  }
}