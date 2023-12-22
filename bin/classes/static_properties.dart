// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // final car1 = Car();
  // car1.carsInstantiated = 23; // bu kod hata verecektir - setteri yok
}

//statik degiskenlerin kopyasi yapilamaz
class Car {
  // sinifin ne kadar kopyasi olursa olsun 1 kere olusturulur
  static int _carsInstantiated = 0;
  static int get carsInstantiated => _carsInstantiated;
  static void _incrementCarsInstantiated() => _carsInstantiated++;

  final String name;

  Car({required this.name}) {
    _incrementCarsInstantiated();
  }
}
