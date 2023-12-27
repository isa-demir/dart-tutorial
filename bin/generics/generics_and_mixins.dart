// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  const person = Person(height: 1.75);
  const stick = SpecialStick(height: 2);

  print(person.height);
  print(stick.height);
}

mixin HasHeight<T extends num> {
  T get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  final double height;
  const Person({
    required this.height,
  });
}

class SpecialStick with HasIntHeight {
  @override
  final int height;
  const SpecialStick({
    required this.height,
  });
}
