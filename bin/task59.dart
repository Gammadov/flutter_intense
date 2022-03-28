// 2. Написать абстрактный класс Ipub, содержащий строковое поле title
// и два void метода: read и write. Создайте конструктор, задающий title.
abstract class Ipub {
  String title;

  Ipub(this.title);

  void read();

  void write();
}

// 3. Написать класс Ibook, который имеет четыре строковых поле: author, pages, publisher, year;
// одно целочисленное поле price и void метод buy().
// Метод выводит сообщение на экран: "книга куплена по цене price рублей"
class Ibook {
  String author = '';
  String pages = '';
  String publisher = '';
  String year = '';
  int price = 0;

  void buy() => print('книга куплена по цене $price рублей');
}

// 4. Написать класс Book, который имплементирует классы Ipub и Ibook.
// Задавайте значения полям через конструктор!
class Book implements Ipub, Ibook {
  @override
  String author;

  @override
  String pages;

  @override
  int price;

  @override
  String publisher;

  @override
  String title;

  @override
  String year;

  Book({
    required this.author,
    required this.pages,
    required this.price,
    required this.publisher,
    required this.title,
    required this.year,
  });

  @override
  void buy() {
    print('книга куплена');
  }

  @override
  void read() {}

  @override
  void write() {}
}

// 5. Создайте в main объект класса Book.
// Выведите на экран в одной строке название, автора, цену.
// Выполните метод buy.
void main() {
  Book harry = Book(author: 'Дж. Роулинг',
      pages: '400 с лишним',
      price: 700,
      publisher: 'Альпина паблишер',
      title: 'Гарри Поттер в гостях у Анифы',
      year: '2022');

  print("${harry.title}, ${harry.author}, ${harry.price}.");
  harry.buy();
}