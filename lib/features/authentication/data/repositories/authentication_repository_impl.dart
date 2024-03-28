import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/features/authentication/data/data_sources/remote/authentication_remote_data_source.dart';
import 'package:my_product_app/features/authentication/domain/repositories/authentication_repository.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource _remoteDataSource;

  AuthenticationRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failures, Unit>> login({
    required String username,
    required String password,
  }) async {
    return await _remoteDataSource.login(
      username: username,
      password: password,
    );
  }
}
