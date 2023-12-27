// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

class Person<T extends num> {
  final T age;
  Person({
    required this.age,
  });
}
