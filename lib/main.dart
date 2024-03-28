import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_product_app/core/constants/storage_constant.dart';
import 'package:my_product_app/core/constants/url_constant.dart';
import 'package:my_product_app/core/dependency_injection/dependency_injection.dart';
import 'package:my_product_app/core/helpers/dio_helper.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_generator.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/styles/app_theme.dart';
import 'package:my_product_app/features/cart/data/models/cart_model.dart';
import 'package:my_product_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:my_product_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Dio
  DioHelper.initialDio(URLConstant.baseURL);

  /// Initialize Dependency Injection configuration
  await configureDependencies();

  /// Get Log in session info
  String? username =
      getIt<SharedPreferences>().getString(StorageConstant.usernameKey);

  /// Initialize Hive Local Storage
  await Hive.initFlutter();
  Hive.registerAdapter(CartModelAdapter());

  runApp(
    MyApp(
      hasLoggedIn: username != null ? true : false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.hasLoggedIn});

  final bool hasLoggedIn;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(
          create: (context) => getIt<CartBloc>()..add(const GetAllCartsEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'My Product App',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        navigatorKey: navigate.navigatorKey,
        initialRoute: hasLoggedIn ? RouteName.home : RouteName.login,
        onGenerateRoute: RouteGenerator.generate,
      ),
    );
  }
}
