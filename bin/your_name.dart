void main(List<String> arguments) {
  someFun(5, 6);
  someFun2(5);
  someFun2(5, 61);
  sum(20, -5);

}


void someFun(int num1, double num2){
  print(num1 + num2);
}

void someFun2(int num1, [int num2 = 0]){
  print(num1 + num2);
}

void sum([int a = 0, int b = 0]) => print(a + b);