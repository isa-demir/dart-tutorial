void main(List<String> args) {
  var numbers1 = [1, 2, 3, 4, 5];
  var numbers2 = [1, 2];

  print(numbers1 - numbers2);
}

extension SubtractIterable<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
