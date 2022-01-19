void main(){
  Character person;
  person = Character();

  person.name = 'Анифа';
  person.gender = 'мужской';
  person.weight = 180;
  person.age = 1000;
  person.info();

  Character man;
  man = person;
  man.age = 90;
  man.info();
  person.info();
}


class Character{
  String name = '';
  String gender = '';
  int age = 0;
  int weight = 0;
  
  void info(){
    print('Это $name. Его пол $gender. Возраст $age. Вес $weight');
  }
}