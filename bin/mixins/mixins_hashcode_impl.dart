// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  /// hashcode impl calisip calismadigini anlamak icin set olusturup icine
  /// ayni ornekten iki tane yazdik. konsol ciktisinda iki ornek ayni oldugu
  /// icin yalnizca 2 cikti almayi bekliyoruz!
  final dogs = <Dog>{
    Dog(age: 2, name: 'Karabas'),
    Dog(age: 5, name: 'Cesur'),
    Dog(age: 2, name: 'Karabas'),
  };

  dogs.forEach(print);
}

enum PetType { cat, dog, fish, rabbit }

mixin Pet {
  PetType get type;
  int get age;
  String get name;

  @override
  String toString() => 'Pet = ${type.name}, name = $name, age = $age';

  @override
  int get hashCode => Object.hash(
        type,
        age,
        name,
      );

  @override
  bool operator ==(Object other) => hashCode == other.hashCode;
}

class Dog with Pet {
  @override
  final int age;
  @override
  final String name;
  @override
  final PetType type;
  Dog({
    required this.age,
    required this.name,
  }) : type = PetType.dog;
}
