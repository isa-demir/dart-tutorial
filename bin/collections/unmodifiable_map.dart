// ignore_for_file: avoid_print

import 'package:collection/collection.dart';

// UnmodifiableMapView -> projeye ekledigimiz collection paketi ile birlikte geliyor!
void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'NewYork',
    },
  };

  info.addAll({
    'phone': '123-432-34',
  });

  print(info);

  final info2 = UnmodifiableMapView(info);
  try {
    info2.addAll({
      'phone': '345-345-23',
    });
    print(info2);
  } catch (e) {
    print(e);
  }
}
