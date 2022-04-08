// урок состоится в среду, 09.03.22

// void main() {
//   EconomicalSanctions vtb = EconomicalSanctions(object: 'банк', type: 'экономические');
// }
//
// class Sanctions {
//   String object = 'Россия';
//   String type = 'Вся жизнь';
//
//   Sanctions({required this.object, required this.type});
//
//   void apply() => print("Санкции наложены");
//   void relieve() => print("Санкции сняты");
// }
//
// class EconomicalSanctions extends Sanctions {
//   EconomicalSanctions({required String object, required String type})
//       : super(object: object, type: type);
// }
//
// class GreatBritain implements Sanctions{
//   @override
//   String object;
//
//   @override
//   String type;
//
//   @override
//   void apply() {
//     // TODO: implement apply
//   }
//
//   @override
//   void relieve() {
//     // TODO: implement relieve
//   }
// }

// void main (){
//   Employee bob = Employee();
//   bob.company = 'Yandex';
//   bob.name = 'Боб';
//   bob.work();
// }
//
// class Person{
//   String name = '';
//
//   void work(){
//     print("Name: $name");
//   }
// }
//
// mixin Worker{
//   String company = "";
//
//   void work(){
//     print("Work in $company");
//   }
// }
//
// class Employee with Person, Worker{
// }

// class Notepad {
//   String paper_size;
//   String sheets_number;
//
//   Notepad({required this.paper_size, required this.sheets_number});
//
//   void buy() => print('вы купили блокнот');
//
//   void write_down() => print('вы сделали заметку');
// }
//
// class Toy {
//   String _name;
//   String owner;
//
//   get name => _name;
//
//   Toy({required String name, required this.owner}) : _name = name;
//
//   void give(String owner) {
//     this.owner = owner;
//     print('вы подарили игрушку $owner');
//   }
// }
//
//
// class Figure extends Toy{
//   String material = 'plastic';
//   Figure({required String name, required String owner}) : super(name: name, owner: owner);
//   @override
//   // TODO: implement _name
//   String get name => 'rrr';
// }
//
// class Ball implements Toy{
//   @override
//   String _name = '';
//
//   @override
//   String owner = 'nobody';
//
//   @override
//   void give(String owner) {
//     print('object');
//   }
//
//   @override
//   get name => 'oops!';
// }
//
// void main(){
//   Figure lighter = Figure(name: 'Баз', owner: 'Ruslan');
// }




mixin Book{
  String title = 'заголовок';
  String author = 'автор';
  int pages = 0;
  void beginRead() => print('начал читать книгу');
}

class Colorization{
  String hue = 'оттенок';
  String saturation = 'насыщенность';
  String brightness = 'яркость';

  void beginRead() => print('когда-нибудь этот метод будет инвертировать цвета');
}

class ColoredBook with Colorization, Book{
}

void main(){
  ColoredBook raskraska = ColoredBook();
  print('${raskraska.title}, ${raskraska.pages}.');
  raskraska.beginRead();
}