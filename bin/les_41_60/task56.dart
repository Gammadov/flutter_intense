void main() {}

class Display {
  double diagonal;
  int refRate;
  bool _on = false;

  Display({required this.diagonal, required this.refRate});

  bool turnOn(){
    return _on = true;
  }

  bool turnOff(){
    return _on = false;
  }
}

class SystemUnit {
  String os;
  String cpu;
  int memory;
  bool _on = false;

  SystemUnit(this.os, this.cpu, this.memory);

  bool turnOn(){
    return _on = true;
  }

  bool turnOff(){
    return _on = false;
  }

}

class DesktopPc{
  String price;
  Display display;
  SystemUnit systemUnit;

  DesktopPc(this.price, this.display, this.systemUnit);

  void turnOn(){
    systemUnit.turnOn();
    display.turnOn();
  }
  void turnOff(){
    systemUnit.turnOff();
    display.turnOff();
  }
}


class Lamp{
  String color;
  String base;
  int power;
  int get lumFlux => 0;

  Lamp(this.color, this.base, this.power);
}


class Incandescent extends Lamp{
  Incandescent(String base, int power) : super('yellow', base, power);

  @override
  int get lumFlux => 13 * power;
}

class Halogen extends Lamp{
  Halogen(String color, String base, int power) : super(color, base, power);

  @override
  int get lumFlux => 18 * this.power;
}

class LED extends Lamp{
  LED(String color, String base, int power) : super(color, base, power);

  @override
  int get lumFlux => 80 * this.power;
}