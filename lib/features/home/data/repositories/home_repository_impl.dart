import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/authentication/data/models/product_model.dart';
import 'package:my_product_app/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:my_product_app/features/home/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failures, List<String>>> fetchAllCategories() async {
    return await _remoteDataSource.fetchAllCategories();
  }

  @override
  Future<Either<Failures, List<ProductModel>>> fetchAllProducts() async {
    return await _remoteDataSource.fetchAllProducts();
  }
}
