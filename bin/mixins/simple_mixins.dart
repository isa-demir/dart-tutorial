void main(List<String> args) {
  Person person = Person();
  person.jump(speed: 10);
  person.walk(speed: 5);

  print('==============');

  Lizard lizard = Lizard();
  lizard.walk(speed: 15);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed; //this.speed HasSpeed'den geliyor
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed; //this.speed HasSpeed'den geliyor
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}

class Lizard with HasSpeed, CanWalk {
  @override
  double speed;

  Lizard() : speed = 0.0;
}
