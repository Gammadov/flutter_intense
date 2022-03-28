void main(){
  // Set<String> alphabet = {'a', 'b', 'c', 'd', 'e'};
  // alphabet.addAll({'f', 'g', 'h', 'b'});
  //
  // Set<String> letters = {};
  // letters.addAll(alphabet);
  // print(alphabet);
  //
  // for(var element in letters){
  //   print(element);
  // }

  // Map<String, int> months2022 = {'123': 1};
  //
  // List<String> mes = months2022.keys.toList();
  // List<int> dni = months2022.values.toList();

  List<int> numbers = [1, 2, 3, 4, 5, 6];
  //
  // print(numbers[0]);
  // numbers.shuffle();
  print(numbers.length);

  List<int> n = [];
  n.addAll(numbers.sublist(0, 3));
  print(n);
}