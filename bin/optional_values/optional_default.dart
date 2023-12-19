void main(List<String> args) {
  int? age = null;

  print(age.orDefault);
  print(null.orDefault);
}

extension DefaultValues<T> on T? {
  T get orDefault {
    if (this != null) return this!;

    switch (T) {
      case String:
        return '' as T;
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case bool:
        return false as T;
      default:
        throw Exception('There is no default value as $T');
    }
  }
}
