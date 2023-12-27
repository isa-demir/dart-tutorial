void main(List<String> args) {
  print(areSame(1, 'df'));
}

bool areSame<T, E>(T type1, E type2) => T == E;
