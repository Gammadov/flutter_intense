void main() {

}

abstract class Player{
  String name;

  Player(this.name);

  void vote();
  void sleep();
  void wake();

  @override
  String toString() {
    return '';
  }
}
