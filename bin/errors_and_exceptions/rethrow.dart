// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  try {
    tryCreatingPerson(age: 30); //calisacak
    tryCreatingPerson(age: -1); //error verecek
    tryCreatingPerson(age: 10); //calismaycak
  } catch (error) {
    print(error);
  }
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    rethrow;
  } catch (exception) {
    print(exception);
  }
  print('-------------------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);
}

class Person {
  final int age;
  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative!');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greater than 140');
    }
  }
}
