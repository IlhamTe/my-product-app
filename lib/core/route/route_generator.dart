import 'package:flutter/material.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/features/authentication/presentation/pages/login_page.dart';
import 'package:my_product_app/features/cart/presentation/pages/cart_page.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';
import 'package:my_product_app/features/home/presentation/pages/detail_product_page.dart';
import 'package:my_product_app/features/home/presentation/pages/home_page.dart';

class RouteGenerator {
  RouteGenerator._();

  /// Initializing route
  static Route<dynamic>? generate(RouteSettings settings) {
    /// Declaring argument route
    final arguments = settings.arguments;

    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
          settings: const RouteSettings(
            name: RouteName.login,
          ),
        );

      case RouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: const RouteSettings(
            name: RouteName.home,
          ),
        );
      case RouteName.detailProduct:
        if (arguments is ProductEntity) {
          return MaterialPageRoute(
            builder: (_) => DetailProductPage(product: arguments),
            settings: const RouteSettings(
              name: RouteName.detailProduct,
            ),
          );
        }
      case RouteName.cartProduct:
        return MaterialPageRoute(
          builder: (_) => const CartPage(),
          settings: const RouteSettings(
            name: RouteName.cartProduct,
          ),
        );
    }

    return null;
  }
}
