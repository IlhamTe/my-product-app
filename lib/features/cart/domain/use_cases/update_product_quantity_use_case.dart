import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class UpdateProductQuantityUseCase
    implements UseCase<CartEntity, UpdateProductQuantityParam> {
  final CartRepository _repository;

  UpdateProductQuantityUseCase(this._repository);

  @override
  Future<Either<Failures, CartEntity>> call(
      UpdateProductQuantityParam params) async {
    return await _repository.updateProductQuantity(
      index: params.index,
      cart: CartEntity(
        productId: params.productId,
        image: params.image,
        productName: params.productName,
        price: params.price,
        quantity: params.quantity,
      ),
    );
  }
}

class UpdateProductQuantityParam extends Equatable {
  final String productName;
  final String image;
  final double price;
  final int quantity;
  final int index;
  final int productId;

  const UpdateProductQuantityParam({
    required this.index,
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        index,
        productId,
        productName,
        image,
        price,
        quantity,
      ];
}
