void main() {
  DriftCar bmw = DriftCar(
      enginePower: 400, drive: 'задний привод', weight: 800);
  bmw.printInfo();

  CrossOver kiaSoul = CrossOver(price: '14 000 000', enginePower: 140, weight: 1700);
  kiaSoul.printInfo();
}

class Car {
  int enginePower;
  String drive;
  int weight;

  Car({required this.enginePower, required this.drive, required this.weight});

  void printInfo() {
    print('$enginePower, $drive, $weight');
  }
}

class DriftCar extends Car {
  DriftCar(
      {required int enginePower, required String drive, required int weight})
      : super(enginePower: enginePower, drive: drive, weight: weight);
}

class CrossOver extends Car {
  String price;

  CrossOver(
      {required this.price, required int enginePower, required int weight})
      : super(enginePower: enginePower, drive: 'передний привод', weight: weight);

  @override
  void printInfo() {
    print('$price, $enginePower, $drive, $weight');
  }
}


// void main(){
//   Phone iphone = Phone(
//     cpu: 'A15',
//     camera: Cameras(size: '20', quantity: 3),
//     battery: Battery(capacity: 4000, fastCharge: true),
//   );
// }
//
//
// class Cameras{
//   String size;
//   int quantity;
//
//   Cameras({required this.size, required this.quantity});
// }
//
// class Battery{
//   bool fastCharge;
//   int capacity;
//
//   Battery({required this.capacity, required this.fastCharge});
// }
//
// class Phone{
//   String cpu;
//   Cameras camera;
//   Battery battery;
//   Phone({required this.cpu, required this.camera, required this.battery});
// }

// void main() {
//   Object obj;
//
//   Car lada = Car(
//       model: '2107',
//       price: '70 000',
//       year: 1983,
//       color: 'баклажан',
//       body: Body(type: 'седан', seats: 4),
//       engine: Engine(volume: 1.5, power: 30),
//       rims: Rim(type: 'кованые', size: 14));
//   lada.printInfo();
//
//   Moto jawa = Moto(model: 'джава',
//       type: 'классический',
//       price: '1 000 000',
//       year: 2022,
//       color: "чёрный",
//       engine: Engine(volume: 1.5, power: 70),
//       rims: Rim(type: 'литьё', size: 17));
//   jawa.printInfo();
// }
//
// class Body {
//   final String type;
//   final int seats;
//
//   const Body({required this.type, required this.seats});
// }
//
// class Engine {
//   final String type;
//   final double volume;
//   final int power;
//
//   const Engine(
//       {this.type = 'бензиновый', required this.volume, required this.power});
// }
//
// class Rim {
//   String type;
//   int size;
//
//   Rim({required this.type, required this.size});
// }
//
// class Auto {
//   String model;
//   String color;
//   String price;
//   int year;
//
//   Engine engine;
//   Rim rims;
//
//   Auto({
//     required this.model,
//     required this.price,
//     required this.year,
//     required this.color,
//     required this.engine,
//     required this.rims,
//   });
//
//   void printInfo(){
//     print('$model, $color, $price.');
//   }
//
//   @override
//   String toString() {
//     // TODO: implement toString
//     return super.toString();
//   }
// }
//
// class Car extends Auto {
//   Body body;
//
//   Car({required String model,
//     required String price,
//     required int year,
//     required String color,
//     required this.body,
//     required Engine engine,
//     required Rim rims})
//       : super(
//       model: model,
//       price: price,
//       year: year,
//       color: color,
//       engine: engine,
//       rims: rims);
// }
//
// class Moto extends Auto {
//   String type;
//
//   Moto({required String model,
//     required this.type,
//     required String price,
//     required int year,
//     required String color,
//     required Engine engine,
//     required Rim rims})
//       : super(
//       model: model,
//       price: price,
//       year: year,
//       color: color,
//       engine: engine,
//       rims: rims);
//
//   @override
//   void printInfo() {
//     print('$model, $type, $color');
//   }
// }
