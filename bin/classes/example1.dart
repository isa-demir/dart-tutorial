void main(List<String> args) {
  const p1 = Person('jesus', 22);
  print(p1.name);

  const foo = Person.foo();
  print(foo.name);

  const baz = Person.baz(34);
  print(baz.name);

  const bar = Person.optionally();
  print(bar.name);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  const Person.foo()
      : name = 'foo',
        age = 20;

  const Person.baz(this.age) : name = 'baz';

  const Person.optionally({this.name = 'bar', this.age = 20});
}
