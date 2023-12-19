import 'package:collection/collection.dart';

void main(List<String> args) {
  testCanonicalizedMap();
  print('------------------');
  testCombinedIterable();
  print('------------------');
}

void testCombinedIterable() {
  final one = [10, 20, 30];
  final two = [40, 50, 60];
  final three = [70, 80, 90];

  //listelerin adreslerini tutuyor gibi
  final combinedIterable = CombinedIterableView([one, two, three]);
  print(combinedIterable);

  two.add(60);
  print(combinedIterable);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Mecnun',
    'age': 25,
    'sex': 'male',
    'address': 'istanbul',
  };

  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      return key.split('').first;
    },
  );
  print(canonMap);
}
