import 'package:dartz/dartz.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';

abstract class HomeRepository {
  Future<Either<Failures, List<ProductEntity>>> fetchAllProducts();
  Future<Either<Failures, List<String>>> fetchAllCategories();
}
