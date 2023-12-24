void main(List<String> args) {
  List<String> names = ['Fatma', 'Ali', 'Hureyre', 'Saliha'];

  print(names * 2);
}

extension MultiplyIterable<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
