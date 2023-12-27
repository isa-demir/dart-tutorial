void main(List<String> args) {
  int n1 = 45;
  print(multiplyIt(n1));

  double n2 = 7.36;
  print(multiplyIt(n2));
}

T multiplyIt<T extends num>(T number) {
  return number * 2 as T;
}
