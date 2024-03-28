import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/exception/exception.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/authentication/domain/repositories/authentication_repository.dart';

@injectable
class LoginUseCase implements UseCase<Unit, LoginUseCaseParam> {
  final AuthenticationRepository _repository;

  LoginUseCase(this._repository);
  @override
  Future<Either<Failures, Unit>> call(LoginUseCaseParam param) async {
    return await _repository.login(
      username: param.username,
      password: param.password,
    );
  }
}

class LoginUseCaseParam extends Equatable {
  const LoginUseCaseParam({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];
}
