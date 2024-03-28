import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/cart/data/data_sources/local/cart_local_data_source.dart';
import 'package:my_product_app/features/cart/data/models/cart_model.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart';

@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartLocalDataSource _localDataSource;

  CartRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failures, Unit>> addCart(CartEntity cart) async {
    return await _localDataSource.addCart(CartModel.fromEntity(cart));
  }

  @override
  Future<Either<Failures, Unit>> deleteAllCart() async {
    return await _localDataSource.deleteAllCart();
  }

  @override
  Future<Either<Failures, Unit>> deleteCart({required int index}) async {
    return await _localDataSource.deleteCart(index: index);
  }

  @override
  Future<Either<Failures, List<CartEntity>>> getAllCarts() async {
    final getAllCartsResult = await _localDataSource.getAllCarts();

    return getAllCartsResult.fold(
      (failures) => Left(failures),
      (cartModels) => Right(cartModels.map((cart) => cart.toEntity()).toList()),
    );
  }

  @override
  Future<Either<Failures, CartEntity>> updateProductQuantity({
    required int index,
    required CartEntity cart,
  }) async {
    final updateProductQuantityResult = await _localDataSource
        .updateProductQuantity(index: index, cart: CartModel.fromEntity(cart));

    return updateProductQuantityResult.fold(
      (failures) => Left(failures),
      (cartModel) => Right(
        cartModel.toEntity(),
      ),
    );
  }
}
