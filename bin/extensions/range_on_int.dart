void main(List<String> args) {
  print(10.to(20));
  print(10.to(5));
  print(10.to(20, inclusive: false));
}

extension Range on int {
  Iterable<int> to(int end, {bool inclusive = true}) {
    if (end > this) {
      return [for (var i = this; i < end; i++) i, if (inclusive) end];
    } else {
      return [for (var i = this; i > end; i--) i, if (inclusive) end];
    }
  }
}
