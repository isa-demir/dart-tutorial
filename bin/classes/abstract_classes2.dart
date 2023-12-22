// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  var logger = MyLogger(message: 'Always same!');
  logger.log();

  var otherLogger = MyOtherLogger(message: 'Same as before!');
  otherLogger.log();
}

abstract class ILogger {
  abstract String message;
  // ILogger({required this.message}); hatali kullanim

  void log() {
    print(message);
  }
}

class MyLogger extends ILogger {
  MyLogger({
    required this.message,
  });

  @override
  String message; //super classda abstract on eki oldugu icin override zorunlu
  //extends ediligidi icin metodu override zorunlu degil
}

class MyOtherLogger implements ILogger {
  @override
  String message;
  MyOtherLogger({
    required this.message,
  });

  @override
  void log() {
    print('$runtimeType logged with $message(${DateTime.now()})');
  }
}
