void main(List<String> args) {
  makeUpperCase();
  print('---------------');
  makeUpperCase('Jesus');
  print('---------------');
  makeUpperCase('Jesus', 'Anyway');
}

void makeUpperCase([String? name, String lastName = 'Bar']) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
