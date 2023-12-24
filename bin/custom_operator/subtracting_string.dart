void main(List<String> args) {
  String hello = 'Hello World!';
  String world = 'World!';
  String hey = 'hey';

  print(hello - world);
  print(hey - world);
  print(world - hello);
}

extension SubtractString on String {
  String operator -(String other) {
    return replaceAll(other, '');
  }
}
