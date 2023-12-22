// ignore_for_file: public_member_api_docs, sort_constructors_first
///dart dilinde yazdigimiz tum siniflar obje sinifindan extend olur.
///Yazmasak dahi bu boyledir
// class Vehicle extends Object {} == class Vehicle {}

void main(List<String> args) {
  final person = Person(name: 'jes', age: 45);
  print(person.toString());
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  //object sinifindan override edilmistir her nekadar sinifin yaninda yazmasa da
  @override
  String toString() => '$name - $age';
}
