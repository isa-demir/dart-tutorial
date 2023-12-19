// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';

import 'lists_and_functions.dart';

// ignore_for_file: avoid_print

void main(List<String> args) {
  final names = {
    'Isa',
    'Jes',
    'Foo'
  }; //names değişkeninin tipi => Set<String> names
  print(names);
  names.add('Isa');
  names.add('Isa');
  print(names);
  divider();

  final names2 = ['Foo', 'Baz', 'Bar', 'Qux', 'Foo', 'Bar'];

  final uniqueNames = {...names2};

  print(uniqueNames);

  divider();

  int number = 2;
  int number2 = 7;
  print('Hashcode of 2 is : ${number.hashCode} - ${number2.hashCode}');

  divider();

  final ages1 = {10, 20, 30};
  final ages2 = {10, 20, 30};

  if (ages1 == ages2) {
    print('E aga bunlar ayni');
  } else {
    print('Nasil yav?');
  }

  final ages3 = [10, 20, 30];
  final ages4 = [10, 20, 30];

  if (ages3 == ages4) {
    print('Bekledigimiz oldu');
  } else {
    print('Allah Allah! Bir terslik var sanki?');
  }

  divider();
  //Collection paketiyle bir deneyelim
  print('Collection paketine gecis yapildi efendim!\n');

  final ages12Result = const SetEquality().equals(ages1, ages2);
  if (ages12Result) {
    print('Simdi oldu, rahatladim esit bunlar!');
  } else {
    print('Kanka manyak olursun!');
  }

  final ages34Result = const ListEquality().equals(ages3, ages4);
  if (ages34Result) {
    print('Bana bunlarla gel! Esitlikkkk!');
  } else {
    print('Yoh yav olamaz!');
  }

  divider();

  // SetEquality ile esitlik kontrolu yapilirken sets icerigindeki siralama onemli degildir.
  final ages5 = {20, 30, 10};
  final res = const SetEquality().equals(ages1, ages5);
  print('$ages1 == $ages5 => $res');
}
