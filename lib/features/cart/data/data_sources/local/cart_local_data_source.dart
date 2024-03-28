import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/constants/storage_constant.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/cart/data/models/cart_model.dart';

abstract class CartLocalDataSource {
  Future<Either<Failures, List<CartModel>>> getAllCarts();
  Future<Either<Failures, Unit>> addCart(CartModel cart);
  Future<Either<Failures, CartModel>> updateProductQuantity({
    required int index,
    required CartModel cart,
  });
  Future<Either<Failures, Unit>> deleteCart({required int index});
  Future<Either<Failures, Unit>> deleteAllCart();
}

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl implements CartLocalDataSource {
  Future<Box<CartModel>> get _cartBox async =>
      await Hive.openBox<CartModel>(StorageConstant.cartBoxName);

  @override
  Future<Either<Failures, Unit>> addCart(CartModel cart) async {
    try {
      final box = await _cartBox;

      await box.add(cart);

      return const Right(unit);
    } on HiveError catch (e) {
      return Left(DatabaseFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<CartModel>>> getAllCarts() async {
    try {
      final box = await _cartBox;

      List<CartModel> carts = box.values.toList();

      return Right(carts);
    } on HiveError catch (e) {
      return Left(DatabaseFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, Unit>> deleteCart({required int index}) async {
    try {
      final box = await _cartBox;

      await box.deleteAt(index);

      return const Right(unit);
    } on HiveError catch (e) {
      return Left(DatabaseFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, CartModel>> updateProductQuantity(
      {required int index, required CartModel cart}) async {
    try {
      final box = await _cartBox;

      await box.putAt(index, cart);

      return Right(cart);
    } on HiveError catch (e) {
      return Left(DatabaseFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, Unit>> deleteAllCart() async {
    try {
      final box = await _cartBox;

      await box.clear();

      return const Right(unit);
    } on HiveError catch (e) {
      return Left(DatabaseFailure(errorMessage: e.message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }
}
