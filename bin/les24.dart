void main() {
  sum(3, 5, 9.4);
  sum(12, 5);
  sum(12, 0, 1, true);
}

void sum(int a, int b, [double c = 0, bool flag = false]){
  print(a + b + c);
}

void fun(int a, int b, {int num1 = 0, required int num2} ){

}

