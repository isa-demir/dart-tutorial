import 'app_manager.dart';
import 'i_app_service.dart';
import 'local_logger_manager.dart';

void main(List<String> args) {
  IAppService appService = AppManager(service: LocalLoggerManager());
  appService.printUser();
}
