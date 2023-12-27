void main(List<String> args) {
  const integers = [125, 5, 5];
  const doubles = [33.3, 3.0, 2.0];

  print(integers.reduce(divide));
  print(doubles.reduce(divide));
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  }
  return lhs / rhs as T;
}
