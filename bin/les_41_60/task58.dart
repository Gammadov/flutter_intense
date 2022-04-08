class PhysicalBody {
  double width, height, weight;
  String _color = 'black';

  String get color => _color;
  set color(String val) => _color = val;

  PhysicalBody(this.width, this.height, this.weight);
}

abstract class Vessel {
  void fill();

  void pour();
}

class Bottle implements PhysicalBody, Vessel {
  String material;

  @override
  String _color = "transparent";

  @override
  String get color => _color;

  @override
  set color(String val) => _color = val;

  @override
  double height;

  @override
  double weight;

  @override
  double width;

  Bottle({
    required this.material,
    required this.width,
    required this.height,
    required this.weight,
  });

  @override
  void fill() {
    print("бутылка наполнена");
  }

  @override
  void pour() {
    print("бутылка опустошена");
  }
}

void main() {
  Bottle glass = Bottle(material: 'glass', width: 15, height: 30, weight: 0.2);
  glass.fill();

  Bottle plastic =
      Bottle(material: 'plastic', width: 15, height: 30, weight: 0.01);
  plastic.color = 'green';

  List <PhysicalBody> phys = [glass, plastic];
  List <Vessel> vess = [glass, plastic];

}
