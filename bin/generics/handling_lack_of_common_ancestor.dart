void main(List<String> args) {
  print(1.toInt());
  print((2.3).toInt());
  print([1, 2, 3].toInt());
}

extension ToInt on Object {
  int toInt() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        [this as int]
      else
        (double.tryParse(toString()) ?? 0.0).round(),
    ];

    return list
        .map(
          (e) => (double.tryParse(e.toString()) ?? 0.0).round(),
        )
        .reduce((lhs, rhs) => lhs + rhs);
  }
}
