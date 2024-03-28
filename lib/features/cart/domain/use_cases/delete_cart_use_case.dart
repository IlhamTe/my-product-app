import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/cart/domain/repositories/cart_repository.dart';

@lazySingleton
class DeleteCartUseCase implements UseCase<Unit, int> {
  final CartRepository _repository;

  DeleteCartUseCase(this._repository);

  @override
  Future<Either<Failures, Unit>> call(int index) async {
    return await _repository.deleteCart(index: index);
  }
}
