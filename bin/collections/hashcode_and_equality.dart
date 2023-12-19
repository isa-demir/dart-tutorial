// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
void main(List<String> args) {
  final person1 = Person(age: 10, name: 'Foo');
  final person2 = Person(age: 10, name: 'Foo');
  final dog = Dog(age: 10, name: 'Foo');
  print(person1 == person2); //true

  ///Asagidaki karsilastirmada hashcodelari ayni olarak doner cunku siniflar icinde
  ///ayni sekilde hashcode uretimi yapacak kod overridde ettik. Yani icindeki'
  ///sinif ozelliklerinin aldigi degerlere gore hashcode urettik!
  print(
      '${person1.hashCode} == ${dog.hashCode} => ${person1.hashCode == dog.hashCode}'); //true

  /// Fakat asagidaki gibi esitlik kontrolu yaptigimizda sonuc false olarak donecektir!
  print(person1 == dog);
}

class Person {
  int age;
  String name;
  Person({
    required this.age,
    required this.name,
  });

  @override
  String toString() => 'Person $age - $name';

  /// Eger bu asagidaki kodlari yazmasaydik ozellikleri ayni olan fakat farkli
  /// yerlerde referans edilen nesneleri karsilastirdigimizda false sonucunu
  /// alirdik. Asagidaki kodlar sayesinde iki nesnenin esit olup olmadigina
  /// daha net bir sekilde karar verebiliyoruz!
  @override
  int get hashCode => Object.hash(age, name);

  @override
  bool operator ==(Object other) =>
      identical(other, this) ||
      other is Person && other.age == age && other.name == name;
}

class Dog {
  int age;
  String name;
  Dog({
    required this.age,
    required this.name,
  });

  @override
  String toString() => 'Dog $age - $name';

  @override
  int get hashCode => Object.hash(age, name);

  @override
  bool operator ==(Object other) =>
      identical(other, this) ||
      other is Dog && other.age == age && other.name == name;
}
