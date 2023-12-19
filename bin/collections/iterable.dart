// ignore_for_file: avoid_print

import 'lists_and_functions.dart';

void main(List<String> args) {
  ///Asagidaki esitligin sag tarafi henuz calismaz. Degisken cagirilinca isleme gecer!
  final iterable = Iterable.generate(20, (i) => getName(i));

  for (final item in iterable.take(2)) {
    //iterable oldugu icin getName yalnizca iki kere calisir
    print(item);
  }
  divider();

  ///Asagidaki olusumda ise kod derlenmesi geldigi anda calisir ve tum degerleri
  ///olusturur. Degiskenin cagrilmasi beklenmez!
  final list = List.generate(20, (index) => getName(index));
  for (final item in list.take(2)) {
    print(item);
  }
}

String getName(int i) {
  print('Getname called #$i');
  return 'Jesus #$i';
}
