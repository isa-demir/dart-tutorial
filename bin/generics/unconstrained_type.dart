void main(List<String> args) {
  const one = KeyValue(1, 2); //key : 1 - value : 2
  print(one);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
