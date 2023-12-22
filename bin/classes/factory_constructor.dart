void main(List<String> args) {
  Vehicle v0 = Vehicle();
  Vehicle v1 = Vehicle.car();
  Vehicle v2 = Vehicle.truck();

  print(v0.toString());
  print(v1.toString());
  print(v2.toString());
}

class Vehicle {
  const Vehicle();

  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
