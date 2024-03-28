import 'package:dartz/dartz.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failures, List<CartEntity>>> getAllCarts();
  Future<Either<Failures, Unit>> addCart(CartEntity cart);
  Future<Either<Failures, CartEntity>> updateProductQuantity({
    required int index,
    required CartEntity cart,
  });
  Future<Either<Failures, Unit>> deleteCart({required int index});
  Future<Either<Failures, Unit>> deleteAllCart();
}
