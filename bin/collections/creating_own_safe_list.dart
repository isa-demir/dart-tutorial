// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'dart:collection';

void main(List<String> args) {
  // final listDefault = [];
  // print(listDefault[1]); //hata verecektir
  // print(listDefault.first);
  // print(listDefault.last); //bu iki kod da hata verecektir.

  final myList = SafeList(
    absentValue: 'NOT_FOUND',
    defaultValue: 'Default_Value',
    values: ['hi', 'yo'],
  );
  print(myList[5]); // NOT_FOUND uyarisi verecektir fakat program cokmeyecektir!
  print(myList.last); // NOT_FOUND uyarisi verecektir!
  print(myList.first); //NOT_FOUND uyarisi verecektir!

  myList.length = 4;
  print(myList);
}

class SafeList<T> extends ListBase<T> {
  final T absentValue;
  final T defaultValue;
  final List<T> _list;

  SafeList({
    required this.absentValue,
    required this.defaultValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  T operator [](int index) {
    if (index < length) {
      return _list[index];
    } else {
      return absentValue;
    }
  }

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first {
    if (_list.isNotEmpty) {
      return _list.first;
    } else {
      return absentValue;
    }
  }

  @override
  T get last {
    if (_list.isNotEmpty) {
      return _list.first;
    } else {
      return absentValue;
    }
  }
}
