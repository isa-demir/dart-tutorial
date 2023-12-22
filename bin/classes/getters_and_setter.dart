void main(List<String> args) {
  final car = Car();
  car.speed = 20;

  car.drive(speed: 10);
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int value) {
    if (value < 0) {
      throw Exception('Speed cannot be negative!');
    } else {
      _speed = value;
    }
  }

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }
}
