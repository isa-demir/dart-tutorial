import 'i_logger.dart';

class LocalLoggerManager implements ILoggerService {
  @override
  void clearLog() {
    print('All logs have been deleted from local storage!');
  }

  @override
  void log({required String date}) {
    print('Logged from local storage. ($date)');
  }
}
