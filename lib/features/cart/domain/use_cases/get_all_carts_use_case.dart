import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class GetAllCartsUseCase implements UseCase<List<CartEntity>, NoParams> {
  final CartRepository _repository;

  GetAllCartsUseCase(this._repository);

  @override
  Future<Either<Failures, List<CartEntity>>> call(NoParams params) async {
    return await _repository.getAllCarts();
  }
}
