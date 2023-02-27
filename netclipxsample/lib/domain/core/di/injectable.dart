import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

/// configure & initialize injectable
final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjetion() async {
  // init(getIt, Environment.prod);
  getIt.registerSingleton(getIt);
  getIt.init(environment: Environment.prod);
}
