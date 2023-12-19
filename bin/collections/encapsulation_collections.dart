// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'dart:collection';

void main(List<String> args) {
  final person = Person(
    name: 'isa',
    siblings: [
      Person(name: 'jesus'),
      Person(name: 'zelis'),
    ],
  );

  try {
    person.siblings?.add(
        Person(name: 'hey')); // Unmodifiable list oldugu icin hata verecektir!
    print(person);
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;
  Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);
}
