void main(List<String> args) {
  var meThisYear = Person(age: 22);
  print('me this year : ${meThisYear.age}');
  var menextyear = meThisYear + 1;
  print('me next year : ${menextyear.age}');
}

class Person {
  final int age;

  Person({required this.age});

  Person operator +(int year) {
    return Person(age: age + year);
  }

  @override
  String toString() {
    return 'Person (age = $age)';
  }
}
