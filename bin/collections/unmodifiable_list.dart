// ignore_for_file: avoid_print

import 'package:collection/collection.dart';

// UnmodifiableListView -> projeye ekledigimiz collection paketi ile birlikte geliyor!
void main(List<String> args) {
  final names = ['jes', 'selvo', 'jack'];
  names.add('jackson');

  final readOnlyList = UnmodifiableListView(names);

  try {
    readOnlyList.add('Bob');
    print(readOnlyList);
  } catch (e) {
    print(e);
  }
}
