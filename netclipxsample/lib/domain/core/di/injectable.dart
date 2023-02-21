import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjetion() async {
  // init(getIt, Environment.prod);
  getIt.registerSingleton(getIt);
  print("getIt registered");
  getIt.init(environment: Environment.prod);
}
