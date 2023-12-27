// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final result = person.mapIfOfType(
        (Person p) => p.name,
      ) ??
      'Unknows person name';
  print(result);
}

abstract class Thing {
  final String name;
  Thing({
    required this.name,
  });
}

class Person extends Thing {
  final int age;

  Person({
    required this.age,
    required String name,
  }) : super(name: name);
}

class Animal extends Thing {
  final String species;

  Animal({
    required this.species,
    required String name,
  }) : super(name: name);
}

final Thing person = Person(age: 22, name: 'Jes');
final Thing animal = Animal(species: 'cow', name: 'sarikiz');

extension<T> on T {
  R? mapIfOfType<R, E>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
