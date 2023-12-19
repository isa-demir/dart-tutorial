void main(List<String> args) {
  String? getFullNameOptional() {
    return null;
  }

  final fullName = getFullNameOptional();
  fullName.describe();

  String getFullName(
    String? firstName,
    String? lastName,
  ) =>
      withAll(
        [firstName, lastName],
        (name) => name.join(' '),
      ) ??
      'Empty';

  print(getFullName('isa', 'demir'));
}

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null)
        ? null
        : callback(
            optionals.cast<T>(),
          );

extension Describe on Object? {
  void describe() {
    if (this == null)
      print('This object is null!');
    else
      print(this.runtimeType);
  }

  void isNullable() {
    this == null ? print('Yes it can be null!') : print('I dont know bro!');
  }
}
