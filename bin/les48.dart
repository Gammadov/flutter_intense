void main() {
  List<int> numbers = [-3, -1, 2, 4, 5, 7];


  //распечатаем список
  // print(numbers); // [-3, -1, 2, 4, 5, 7]
  //
  // // // first: возвращает первый элемент
  // // print(numbers.first);
  // //
  // // // last: возвращает последний элемент
  // // print(numbers.last);
  // //
  // // // length: возвращает длину списка
  // // print(numbers.length);
  // //
  // // // reversed: возвращает список, в котором все элементы расположены в противоположном порядке
  // print(numbers.reversed.toList());
  // print(numbers);
  // //
  // // // isEmpty: возвращает true, если список пуст
  // // print(numbers.isEmpty);
  // // print(numbers.isNotEmpty);
  // //
  // // // add(E value): добавляет элемент в конец списка
  // // numbers.add(27);
  // // print(numbers);
  // //
  // // // addAll(Iterable<E> iterable): добавляет в конец списка другой список
  // // numbers.addAll([32, 61]);
  // // print(numbers);
  // //
  // // // clear(): удаляет все элементы из списка
  // // numbers.clear();
  // // print(numbers);
  // //
  // // List<int> another = [5, 2, 10, 16, 2, 5, 2, 7];
  // // numbers.addAll(another);
  // // print(numbers);
  // //
  // // // indexOf(E element): возвращает первый индекс элемента
  // // print(numbers.indexOf(2));
  // //
  // // // insert(int index, E element): вставляет элемент на определенную позицию
  // // numbers.insert(3, 12);
  // // print(numbers);
  // //
  // // // remove(Object value): удаляет объект из списка (удаляется только первое вхождение элемена в список)
  // // numbers.remove(2);
  // // print(numbers);
  // //
  // // // removeAt(int index): удаляет элементы по индексу
  // // numbers.removeAt(1);
  // // print(numbers);
  // //
  // // // removeLast(): удаляет последний элемент списка
  // // numbers.removeLast();
  // // print(numbers);
  // //
  // // // sort(): сортирует список
  // numbers.sort();
  // print(numbers);
  // //
  // // // sublist(int start, [ int end ]): возвращает часть списка от индекса start до индекса end
  // // print(numbers.sublist(3));
  // //
  // // // contains(Object element): возвращает true, если элемент содержится в списке
  // // print(numbers.contains(3));
  // //
  // // // join([String separator = "" ]): объединяет все элементы списка в строку. Можно указать необязательный параметр separator, который будет раздлять элементы в строке
  // // print(numbers.join('\t'));
  // //
  // // // skip(int count): возвращает коллекцию, в которой отсутствуют первые count элементов
  // // print(numbers.skip(2));
  // // print(numbers.skip(2).toList());
  // // print(numbers);
  // //
  // // // take(int count): возвращает коллекцию, которая содержит первые count элементов
  // // print(numbers.take(2));
  // // print(numbers.take(2).toList());
  // // print(numbers);
  // //
  // // // where(bool test(E element)): возвращает коллекцию, элементы которой соответствуют некоторому условию, которое передается в виде функции
  // // print(numbers.where((element) => element.isEven));
  // // print(numbers.where((element) => element.isEven).toList());
  // // print(numbers);

  // ссылочный тип данных!
  // List<int> anotherNums = numbers;
  List<int> anotherNums = [...numbers];
  anotherNums.removeAt(3);
  print(anotherNums);
  //
  // print(anotherNums);
  // print(numbers);
  //
  // print(anotherNums[4]);

  // выход за пределы
  // print(anotherNums[11]);

  for(int i = 0; i < anotherNums.length; i += 2){
    print('i = $i');
    print(anotherNums[i]);
  }

  for (int element in anotherNums){
    print(element >= 5);
  }

  print('');
  print('forEach');
  anotherNums.forEach((element) => print(element.isOdd));

  // // получим первый элемент
  // print(list.first);  // -3
  //
  // // получим последний элемент
  // print(list.last);   // 7
  //
  // // получим длину списка
  // print(list.length); // 6
  //
  // // добавим список
  // list.addAll([4, 6]);
  //
  // // соединим элементы списка в строку, разделитель запятая
  // print(list.join("; ")); // -3, -1, 2, 4, 5, 7, 4, 6
  //
  // // отсортируем список
  // list.sort();
  // print(list); // [-3, -1, 2, 4, 4, 5, 6, 7]
  //
  // // удалим число 4
  // list.remove(4);
  // // удалим второй элемент
  // list.removeAt(1);
  // print(list); // [-3, 2, 4, 5, 6, 7]
  //
  // // получим элементы больше  2
  // list = list.where((int element) => element > 2).toList();
  // print(list); // [4, 5, 6, 7]
  //
  //
  // List<int> newList = [...list];
  // newList.add(5);
  // print(newList);
  // print(list);
}
