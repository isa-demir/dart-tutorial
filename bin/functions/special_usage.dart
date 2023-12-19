void main(List<String> args) {
  final result = performOperation(10, 5, (p0, p1) => p0 + p1);
  print(result);
}

int performOperation(int a, int b, int Function(int, int) operation) =>
    operation(a, b);
