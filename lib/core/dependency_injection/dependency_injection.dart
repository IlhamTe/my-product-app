import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/dependency_injection/dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib', 'test'])
Future<void> configureDependencies() async => getIt.init();
