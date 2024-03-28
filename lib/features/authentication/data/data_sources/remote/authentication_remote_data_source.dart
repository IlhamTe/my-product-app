import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/constants/url_constant.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/extensions/dio_response_extension.dart';
import 'package:my_product_app/core/helpers/dio_helper.dart';

abstract class AuthenticationRemoteDataSource {
  Future<Either<Failures, Unit>> login({
    required String username,
    required String password,
  });
}

@LazySingleton(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio _dio;

  AuthenticationRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failures, Unit>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        URLConstant.login,
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.isSuccess) {
        return const Right(unit);
      }

      return Left(ServerFailure(
          errorMessage:
              'Failed to login with error code ${response.statusCode}'));
    } on DioException catch (e) {
      final message = DioHelper.generalException(e);
      return Left(ServerFailure(errorMessage: message));
    } catch (e) {
      return Left(UnexpectedFailure(errorMessage: e.toString()));
    }
  }
}
