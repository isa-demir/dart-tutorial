// ignore_for_file: avoid_print

import 'lists_and_functions.dart';

void main(List<String> args) {
  final info = {
    'name': 'jes',
    'age': 10,
  };

  for (var element in info.keys) {
    print('$element : ${info[element]}');
  }

  /// Eğer aşağıdaki fonksiyon ile ekleme yapmaya çalışırsak ve map içinde fonksiyona
  /// verdiğimiz key değeri var ise o key'e ait değeri döner. Eğer yok ise map'e
  /// ekler ve eklenen değeri döner!
  final result = info.putIfAbsent('height', () => 100);
  print(result); //100

  final result1 = info.putIfAbsent('name', () => 'hello');
  print(result1); //jes

  info['jes'] = 'sdsdsd'; //ekleme yapti
  print(info);
  info['jes'] = 'iscorrect'; //degeri degistirdi
  print(info);
  info['jes'] = 'iscorrect'; //herhangi bir degisiklik olmadi
  print(info);

  divider();

  if (info.containsKey('jes')) {
    print('The value of jes is : ${info['jes']}');
  } else {
    print('the key jes doesnt exists!');
  }

  divider();

  ///eger map'de olmayan bir anahtarin degerine erismeye calisirsak null aliriz!
  final result3 = info['weight']; //weight anahtari map icinde yok
  print(result3); //null
}
