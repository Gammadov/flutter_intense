void main() {
  Incandescent l1 = Incandescent(base: 'e27', power: 45);
  Halogen l2 = Halogen(color: 'дневной', base: 'e27', power: 25);
  LED l3 = LED(color: 'теплый белый', base: 'e14', power: 7);
  print('$l1,\n$l2,\n$l3');
}

abstract class Lamp {
  String base;
  int power;

  int get lumFlux;

  Lamp({required this.base, required this.power});

  void turnOn();
}

class Incandescent extends Lamp {
  Incandescent({required base, required power})
      : super(base: base, power: power);

  @override
  int get lumFlux => 13 * power;

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
}

class Halogen extends Lamp {
  Halogen({required String color, required String base, required int power})
      : super(base: base, power: power);

  @override
  int get lumFlux => 18 * power;

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
}

class LED extends Lamp {
  LED({required String color, required String base, required int power})
      : super(base: base, power: power);

  @override
  int get lumFlux => 80 * power;

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
}