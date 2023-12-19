void main(List<String> args) {
  Person person = Person();
  print(person.fullName);
  print(person.fullName);
  print(person.fullName);
}

class Person {
  late String fullName = _getFullName();
  String _getFullName() {
    print('_getFullName() called!');
    return 'Ben 10';
  }
}
