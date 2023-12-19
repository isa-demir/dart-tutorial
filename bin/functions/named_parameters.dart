void main(List<String> args) {
  sayHelloTo('Isa');
  sayHelloToNamedRequired(name: 'Isa', lastName: 'Demir');
  sayHelloToNamedDefault(name: 'Isa');
  sayHelloToNamedDefault(lastName: 'Whaaat?');
  sayHelloToNullName();
  sayHelloToNullName(name: null);
  sayHelloToNullName(name: 'Not null dude!');
}

void sayHelloTo(String name) {
  print('Hello $name!');
}

void sayHelloToNamedRequired({required String name, required String lastName}) {
  print('Hello $name ${lastName.toUpperCase()}!');
}

void sayHelloToNamedDefault({String name = 'Isa', String lastName = 'Demir'}) {
  print('Hello $name ${lastName.toUpperCase()}!');
}

void sayHelloToNullName({String? name}) {
  print('Hello $name');
}
