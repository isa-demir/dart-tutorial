void main(List<String> args) {
  String? first = 'Isa';
  String? last = 'Demir';

  final res = first.flatMap(
    (f) => last.flatMap(
      (l) => '$f $l',
    ),
  );

  print(res);

  print(['isa', 'selver', 2, 4].makeString());
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

extension MakeString<T> on List<T> {
  String makeString() {
    return this.join(' - ');
  }
}
