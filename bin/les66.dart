void main() {


  // List<double> nums = [0.0, -0.5, 100.1];
  // nums.add(5);
  // nums.add(5);
  // nums.add(5);
  // print(nums);
  //
  // Set<int> ints = {-19, 17, 1991};
  // ints.add(45);
  // ints.add(45);
  // ints.add(45);
  // print(ints);
  //
  // print(nums[0]);
  // print(ints[0]);

  // Set first = {2, 0.4, true, 'AAAA', 7, 0};
  // Set<int> second = {-4 , 0, 7};
  // print(first);
  // print(second);
  //
  // print(second.union({4, 34, -0}));


  Map<String, bool> answers = {
    "question 1": true,
    "question 2": true,
    "question 3": false,
    "question 4": true,
    "question 5": true,
  };
  print(answers);
  // print(answers['question 3']);
  // answers['question 3'] = true;
  //
  // answers.addAll({"question 5": false});
  // print(answers);

  Map newAnswers = {};
  newAnswers.addEntries(answers.entries);
  newAnswers.remove('question 1');

  print(answers);
  print(newAnswers);


  // Map<String, int> priceList = {
  //   'Ruble': 1,
  //   'Dollar': 102,
  //   'Funt': 135,
  //   'Manat': 60
  // };
  //
  // priceList.addAll({'Yan': 16});
  // //
  // // print(priceList);
  // // priceList["Manat"] = 39;
  // // print(priceList["Manat"]);
  //
  // Map newMap = {};
  // newMap.addEntries(priceList.entries);
  //
  // newMap.remove('Yan');
  // // print(newMap);
  // // print(priceList);
  //
  // print(newMap.values);
  // print(newMap.keys.toList());
}
