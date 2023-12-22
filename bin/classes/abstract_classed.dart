// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final business = Business(logger: LocalLogger());
  business.doSomething('Who care?');

  final business2 = Business(logger: CloudLogger());
  business2.doSomething();
}

abstract class ILogger {
  void log(String logMessage) =>
      print('Logged to $runtimeType with message : $logMessage');
}

class LocalLogger extends ILogger {}

class CloudLogger implements ILogger {
  @override
  void log(String logMessage) {
    if (logMessage.isEmpty) {
      print('Logged to $runtimeType with message : ${DateTime.now()}');
    } else {
      print('Logged to $runtimeType with message : $logMessage');
    }
  }
}

class Business {
  final ILogger _logger;
  Business({
    required ILogger logger,
  }) : _logger = logger;

  void doSomething([String logMessage = '']) {
    print('Some bla bla finished!');
    _logger.log(logMessage);
  }
}
