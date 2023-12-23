void main(List<String> args) {
  final whiskers = Cat(age: 2);
  whiskers.incrementAge();
  print(whiskers.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  late int age;
  Cat({required this.age});
}
