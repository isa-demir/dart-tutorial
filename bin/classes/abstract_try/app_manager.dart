// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'i_app_service.dart';
import 'i_logger.dart';

class AppManager implements IAppService {
  final ILoggerService _service;
  AppManager({
    required ILoggerService service,
  }) : _service = service;
  @override
  void printUser() {
    print('User name is : Jesus.');
    _service.log(date: DateTime.now().toIso8601String());
  }
}
