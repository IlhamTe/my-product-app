import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/constants/url_constant.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/extensions/dio_response_extension.dart';
import 'package:my_product_app/core/helpers/dio_helper.dart';
import 'package:my_product_app/features/authentication/data/models/product_model.dart';

abstract class HomeRemoteDataSource {
  Future<Either<Failures, List<ProductModel>>> fetchAllProducts();
  Future<Either<Failures, List<String>>> fetchAllCategories();
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failures, List<String>>> fetchAllCategories() async {
    try {
      final response = await _dio.get(
        URLConstant.allCategories,
      );

      if (response.isSuccess) {
        final List<String> categories = (response.data as List).cast<String>();
        return Right(categories);
      }

      return const Right([]);
    } on DioException catch (e) {
      final message = DioHelper.generalException(e);
      return Left(ServerFailure(errorMessage: message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<ProductModel>>> fetchAllProducts() async {
    try {
      final response = await _dio.get(
        URLConstant.allProducts,
      );

      if (response.isSuccess) {
        final List<dynamic> rawProducts = response.data;
        final mappedProducts =
            rawProducts.map((data) => ProductModel.fromJson(data)).toList();
        return Right(mappedProducts);
      }

      return const Right([]);
    } on DioException catch (e) {
      final message = DioHelper.generalException(e);
      return Left(ServerFailure(errorMessage: message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }
}
