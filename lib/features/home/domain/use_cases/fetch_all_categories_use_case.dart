import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/home/domain/repositories/home_repository.dart';

@lazySingleton
class FetchAllCategoriesUseCase implements UseCase<List<String>, NoParams> {
  final HomeRepository _repository;

  FetchAllCategoriesUseCase(this._repository);

  @override
  Future<Either<Failures, List<String>>> call(NoParams params) async {
    return await _repository.fetchAllCategories();
  }
}
