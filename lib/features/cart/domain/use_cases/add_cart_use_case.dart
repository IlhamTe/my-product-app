import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class AddCartUseCase implements UseCase<Unit, AddCartParam> {
  final CartRepository _repository;

  AddCartUseCase(this._repository);

  @override
  Future<Either<Failures, Unit>> call(AddCartParam params) async {
    return await _repository.addCart(
      CartEntity(
        productId: params.productId,
        image: params.image,
        productName: params.productName,
        price: params.price,
        quantity: params.quantity,
      ),
    );
  }
}

class AddCartParam extends Equatable {
  final String productName;
  final String image;
  final double price;
  final int quantity;
  final int productId;

  const AddCartParam({
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.quantity,
  });

  @override
  List<Object?> get props => [
        productId,
        productName,
        image,
        price,
        quantity,
      ];
}
