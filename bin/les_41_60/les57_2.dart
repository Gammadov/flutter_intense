import "dart:math" show pi;

void main(){
  Circle krug = Circle(5, 'круг');
  print(krug);
}

abstract class Figure{
  // поле name будет у всех наследников
  String name;
  Figure(this.name);

  // свойство perimeter будет у всех наследников.
  // но его надо "расписать" в каждом наследнике
  get perimeter;

  // метод toString будет у всех наследников.
  @override
  String toString() {
    return 'фигура $name с периметром $perimeter';
  }
}

class Circle extends Figure{
  // своё поле
  int radius;

  Circle(this.radius, String name) : super(name);

  // расписываем perimeter для Circle
  @override
  get perimeter => 2 * pi * radius;
}

class Triangle extends Figure{
  // свои поля
  int sideA, sideB, sideC;

  Triangle(this.sideA, this.sideB, this.sideC, String name) : super(name);

  // расписываем perimeter для Triangle
  @override
  get perimeter => sideA + sideB+ sideC;
}

class Rectangle extends Figure{
  // свои поля
  int length, width;

  Rectangle(this.length, this.width, String name) : super(name);

  // расписываем perimeter для Rectangle
  @override
  get perimeter => 2 * (length + width);
}