// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  var jes = Person(name: 'jes', age: 22);

  /// Person sinifi uzerinde tanimli iki adet extension var ve extensionlarin
  /// icindeki ozelliklerin isimleri de ayni. Dolayisiyla asagidaki bir yazim
  /// yapildiginda dart hangisini kullanacagini bilemez ve hata verir.
  // print(jes.description());

  // Asagidaki kullanim dogrusudur!
  print(ShortDescription(jes).description());
  print(LongDescription(jes).description());
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
}

extension ShortDescription on Person {
  String description() => '$name ($age)';
}

extension LongDescription on Person {
  String description() => 'Name : $name => Age : $age';
}
