import 'dart:math';

void main() {
  // List<int> task1 = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]; // 12 прописать числа 31, 30, 28
  // print(task1);
  //
  // List<bool> task2 = [];
  // task2.add(false);
  // for(int i = 1; i < 6; i+= 1) task2.add(!task2[i-1]);
  // print(task2);
  //
  // List<double> task3 = List.generate(7, (element) => Random().nextDouble());
  // task3.sort();
  // task3 = task3.reversed.toList();
  // print(task3);
  //
  // List<int> task4 = List.generate(8, (element) => Random().nextInt(21) - 10);
  // print(task4.where((element) => element.isNegative).join(' '));
  //
  // List<int> task5 = List.generate(9, (element) => Random().nextInt(21) - 10);
  // task5.forEach((element) {print('$element\t${element * element}');});

  // List<int> task61 = List.generate(4, (element) => Random().nextInt(10));
  // task61.sort();
  //
  // List<int> task62 = List.generate(9, (element) => Random().nextInt(20) + 21);
  // task62.sort();
  //
  // List<int> merge;
  // if (task61[0] < task62[0]) merge = task61 + task62;
  // else merge = task62 + task61;
  // print(task61);
  // print(task62);
  // print(merge);

  // List<int> task7 = List.generate(11, (element) => Random().nextInt(30));
  // print(task7);
  //
  // List<int> task7_sorted = [...task7];
  // task7_sorted.sort();
  //
  // int i_min = task7.indexOf(task7_sorted.first);
  // int i_max = task7.indexOf(task7_sorted.last);
  //
  // task7[i_min] = task7_sorted.last;
  // task7[i_max] = task7_sorted.first;
  // print(task7);

  // List<String> quote = [
  //   'Я не могу сидеть сложа руки',
  //   'и праздно глядеть, как кто-то',
  //   'трудится в поте лица.',
  //   "",
  //   'У меня сразу же появляется',
  //   '',
  //   "",
  //   '',
  //   'потребность встать и начать',
  //   'распоряжаться, и я прохаживаюсь,'
  //       'засунув руки в карманы,'
  //       '',
  //   'и руковожу. Я деятелен по натуре. ',
  // ];
  // while (quote.contains("")) quote.remove("");
  // print(quote.join('\n'));

  // List<int> nums;
  // // генератор списков
  // nums = List.generate(10, (index) => 50); // длина 10, все значения 50
  // nums = List.generate(10, (index) => Random().nextInt(101) - 50); // длина 10, значения от -50 до 50
  // print(nums);

  // print(nums.take(0));
  // print(nums.where((element) => element.isNegative).join(' '));
  // List<int> squareNums = [];
  // print(squareNums.length);
  // nums.forEach((element) {squareNums.add(element * element);});
  // print(nums);
  // print(squareNums);

  // nums.sort();
  // print(nums);
  // addNumber(nums, 23);
  // print(nums);
}

void addNumber(List<int> list, int number) {
  int index = -1;
  for (int element in list) {
    if (element >= number) {
      index = list.indexOf(element);
      list.insert(index, number);
      return;
    }
  }
}
