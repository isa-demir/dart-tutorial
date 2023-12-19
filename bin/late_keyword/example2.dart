void main(List<String> args) {
  Person person = Person();
  print(person.age);
  print(person.desc);
}

class Person {
  late String desc = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 22}) {
    print('Constructor called!');
  }

  String heavyCalculationOfDescription() {
    print('The method is heavyCalculationOfDescription is called.');
    return 'My Little Pony!';
  }
}
