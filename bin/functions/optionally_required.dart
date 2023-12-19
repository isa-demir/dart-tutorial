void main(List<String> args) {
  doSomething(age: null);
  doSomething(age: 22);
}

void doSomething({required int? age}) {
  if (age != null) {
    final year = DateTime.now().year;
    final birtthYear = year - age;
    print('your birth year is : $birtthYear');
  }
}
