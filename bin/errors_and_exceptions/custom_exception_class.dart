// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  tryCreatingPerson(age: 22);
  tryCreatingPerson(age: -2);
  tryCreatingPerson();
  tryCreatingPerson(age: 145);
}

class Person {
  final int age;
  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeException(
        age,
        'Age cannot be negative',
      );
    } else if (age > 140) {
      throw InvalidAgeException(
        age,
        'Age cannot be greater than 140',
      );
    }
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, strackTrace) {
    print(exception);
    print(strackTrace);
  }
  print('--------------------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);

  @override
  String toString() => 'InvalidAgeException, $message, $age';
}
