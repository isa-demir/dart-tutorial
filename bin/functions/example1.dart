void main(List<String> args) {}

/// Eğer bir fonksiyon için geri dönüş değeri belirtmezsek otomatik olarak dönüş tipi dynamic olur.
/// Özel olarak bir dönüş türü belirmediğimizde her fonksiyon varsayılan olarak null döner.
void doSome() {
  print('hello');
}
