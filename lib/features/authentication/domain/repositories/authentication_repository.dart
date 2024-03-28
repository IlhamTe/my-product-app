import 'package:dartz/dartz.dart';
import 'package:my_product_app/core/exception/exception.dart';

abstract class AuthenticationRepository {
  Future<Either<Failures, Unit>> login({
    required String username,
    required String password,
  });
}
