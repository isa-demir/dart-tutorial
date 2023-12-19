// ignore_for_file: avoid_print

void main(List<String> args) {
  addToArrayWrong();
  print('-------------------');
  addToArrayRight();
  print('-------------------');
  addToDictionaryWrong();
  print('-------------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  /// asagidaki atama islemi referans atamasidir. Yani allNamesWrong degiskeni
  /// uzerinde yaptigimizi sandigimiz degisiklikleri aslinda names1 degiskeni
  /// uzerinde yapmis oluruz. Ikisi de bellekte ayni yeri gosterir.
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesRight = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
}

void addToDictionaryWrong() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  try {
    final result = info;
    result.addAll({'weight': 80});
  } catch (e) {
    print(e);
  }
}

void addToDictionaryRight() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };
  final result = {...info}..addAll({'weight': 80});
  print(result);
}
