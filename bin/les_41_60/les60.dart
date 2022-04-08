void main(){
  printColor(Colors.green);
}

enum Colors{red, orange, green, blue}

void printColor(Colors color) {
  switch (color) {
    case Colors.red:
      print('красим в красный');
      break;
    case Colors.orange:
      print('красим в оранжевый');
      break;
    case Colors.green:
      print('красим в зелёный');
      break;
    case Colors.blue:
      print('красим в синий');
      break;
  }
}
