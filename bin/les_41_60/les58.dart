// abstract class Remote {
//   String mode;
//
//   Remote(this.mode);
//
//   void onOff();
// }
//
// class Engine {
//   int enginePower;
//   int weight;
//
//   Engine({required this.enginePower, required this.weight});
//
//   void printInfo() {
//     print('$enginePower, $weight');
//   }
// }
//
// class ElectricEngine extends Engine {
//   ElectricEngine({required int enginePower, required int weight})
//       : super(enginePower: enginePower, weight: weight);
// }
//
//
//
// class RemoteStart implements Engine, Remote {
//   @override
//   int enginePower = 0;
//
//   @override
//   int weight = 10;
//
//   @override
//   void printInfo() {
//     // TODO: implement printInfo
//     print('...');
//   }
//
//   @override
//   String mode = 'mode';
//
//   @override
//   void onOff() {
//     print('on');
//   }
// }

//
// void main (){
//
//   Employee bob = Employee("Bob", "Google");
//   bob.display();  // Employee name: Bob
//   bob.work();     // Employee works in Google
// }
//
// class Person{
//   String name;
//   Person(this.name);
//
//   void display(){
//     print("Name: $name");
//   }
// }
//
//
// class Worker{
//   String company = "";
//   void work(){
//     print("Work in $company");
//   }
// }
//
//
// class Employee implements Person, Worker{
//
//   String name;            // реализация поля name из Person
//   String company;         // реализация поля company из Worker
//
//   // реализация метода display Person
//   void display(){
//     print("Employee name: $name");
//   }
//   // реализация метода work из Worker
//   void work(){
//     print("Employee works in $company");
//   }
//
//   Employee(this.name, this.company);
// }

import 'task58.dart';

void main(){
  PhysicalBody telo = PhysicalBody(20, 10, 1000);
  telo.color;
  telo.color = 'some';
}