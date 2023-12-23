// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(
    id: uuid1,
    name: 'John',
    age: 30,
  );
  final person2 = Person(
    id: uuid2,
    name: 'john',
    age: 30,
  );

  print(person1 == person2);
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;
  final String name;
  final int age;
  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
