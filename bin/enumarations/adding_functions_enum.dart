/// enum yapisinin icinden ve disindan enuma icin fonksiyon yazabiliriz
void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..jump()
    ..run();
  AnimalType.rabbit
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  //enum icinde enum icin fonksiyon yazma
  void run() {
    print('$this is running...');
  }
}

// enum disindan enum icin fonksiyon yazma
extension Jump on AnimalType {
  void jump() {
    print('$this is jumping...');
  }
}
