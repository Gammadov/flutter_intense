void main() {
  List<List<int>> two_dim_List = [
    [1, 2],
    [3, 4],
    [5, 6],
  ];

  print(two_dim_List);
  print(two_dim_List[2]);
  print(two_dim_List[2][0]);


  List<List<String>> noble_gases = [
    ["Atomic number", "Symbol", "Name", "Standard atomic weight"],
    ['2', 'He', 'Гелий ', '4.002602(2) '],
    ['10', 'Ne', 'Неон ', '20.1797(6) '],
    ['18', 'Ar', 'Аргон ', '39.948(1) '],
    ['36', 'Kr', 'Криптон ', '83.80(1) '],
    ['54', 'Xe', 'Ксенон ', '131.29(2) '],
    ['86', 'Rn', 'Радон ', '(222)'],
    ['118', 'Oq', 'Оганесон ', '(294)']
  ];

  // // print(noble_gases);
  // for(var item in noble_gases){
  //   print(item);
  // }
}
