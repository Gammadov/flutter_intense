void main() {
  Incandescent l1 = Incandescent(base: 'e27', power: 45);
  Halogen l2 = Halogen(color: 'дневной', base: 'e27', power: 25);
  LED l3 = LED(color: 'теплый белый', base: 'e14', power: 7);
  print('$l1,\n$l2,\n$l3');
}

/*
ЗАДАНИЕ 1. Создание класса Lamp.

1.1. Добавьте в класс Lamp 3 поля:
     цвет свечения, color, строковое;
     форма цоколя, base, строковое;
     потребляемая мощность, power, целочисленное.

1.2. Добавьте геттер int get lumFlux, который возвращает 0.

1.3. Добавьте базовый конструктор с именованными required параметрами.

*/
class Lamp {
  String color;
  String base;
  int power;

  int get lumFlux => 0;

  Lamp({required this.color, required this.base, required this.power});

  @override
  String toString() {
    return '$color, $base, $power';
  }
}


/*
ЗАДАНИЕ 2. Создание класса для ламп накаливания Incandescent.

2.1. Отнаследуйтесь от класса Lamp.

2.2. Добавьте базовый конструктор. Задайте значение 'yellow'
     полю color родительского конструктора.

2.3. Переопределите геттер lumFlux. lumFlux должен возвращать:
     13 * power.

*/
class Incandescent extends Lamp {
  Incandescent({required base, required power}) : super(color: 'желтый', base: base, power: power);

  @override
  int get lumFlux => 13 * power;
}


/*
ЗАДАНИЕ 3. Создание класса для галогеновых ламп Halogen.

3.1. Отнаследуйтесь от класса Lamp.

3.2. Добавьте базовый конструктор.

3.3. Переопределите геттер lumFlux. lumFlux должен возвращать:
     18 * power.

*/
class Halogen extends Lamp {
  Halogen({required String color, required String base, required int power}) : super(color: color, base: base, power: power);

  @override
  int get lumFlux => 18 * power;
}

/*
ЗАДАНИЕ 4. Создание класса для галогеновых ламп LED.

4.1. Отнаследуйтесь от класса Lamp.

4.2. Добавьте базовый конструктор.

4.3. Переопределите геттер lumFlux. lumFlux должен возвращать:
     80 * power.

4.4. Создайте объекты классов Incandescent, Halogen и LED.
     Выведите информацию об объектах на экран.

*/
class LED extends Lamp {
  LED({required String color, required String base, required int power}) : super(color: color, base: base, power: power);

  @override
  int get lumFlux => 80 * power;
}