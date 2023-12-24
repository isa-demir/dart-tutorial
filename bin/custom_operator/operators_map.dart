void main(List<String> args) {
  print({'name': 'isa', 'age': 13} + {'city': 'istnabul', 'citycode': 34});
  print({'name': 'isa', 'age': 13} - {'name': 'isa'});
  print({'name': 'isa'} * 4);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
        ...this,
        ...other,
      };

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
