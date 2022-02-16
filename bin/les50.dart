void main() {
  Food pie = Food('Даргинское чуду', 1000000);
  List<Food> edostav = [
  Food('Пирожок', 10000),
  Food('Булка', 10000),
  Food('Шаурма', 10000),
  Food('Шаверма', 100000000),
  Food('Донер', 100000000),
  ];

  print(edostav);
}

class Food{
  String name;
  int caloric;

  Food(this.name, this.caloric);

  @override
  String toString() {
    // TODO: implement toString
    return '$name  $caloric';
  }
}