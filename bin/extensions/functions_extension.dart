import 'dart:math';

void main(List<String> args) {
  print(add.callWithRandom());
  print(add.callWithRandom());
  print(subtract.callWithRandom());
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandom() {
    final a = Random().nextInt(100);
    final b = Random().nextInt(100);
    print('Random values : $a - $b');
    return call(a, b);
  }
}
