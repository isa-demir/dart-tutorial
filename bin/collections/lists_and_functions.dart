import 'dart:io';

void main(List<String> args) {
  const names = ['jes', 'foo', 'bar', 'qux', 'baz'];

  List<String> res = names.where((element) => element.contains('e')).toList();

  for (final name in res) {
    print(name);
  }
  divider();

  for (final name in names.where((element) => isNameStartsWithB(element))) {
    print(name);
  }

  divider();

  final newList = names.map(heyYo).toList();
  for (var element in newList) {
    stdout.write(element + ' ');
  }
  divider();
  final numbers = [1, 2, 3, 4, 5];

  final sum = numbers.fold(
    0,
    (previousValue, thisValue) => previousValue + thisValue,
  );

  print('Sum : $sum');
  divider();

  final totalLength = names.fold(
      0, (previousValue, thisValue) => previousValue + thisValue.length);

  print('Total length: $totalLength');

  divider();

  final listString =
      names.reduce((value, element) => (value + ' ' + element).toUpperCase());
  print(listString);
}

void divider() => print('\n================');

bool isNameStartsWithB(String name) {
  return name.toLowerCase().startsWith('b');
}

String heyYo(String e) => 'p';
