void main(List<String> args) {
  print(doSomething()());
  print(doSomething(76, 24)());
}

int Function() doSomething([
  int a = 20,
  int b = 10,
]) =>
    () => a + b;
