import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/constants/storage_constant.dart';
import 'package:my_product_app/core/dependency_injection/dependency_injection.dart';
import 'package:my_product_app/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this._loginUseCase) : super(const AuthenticationState()) {
    on<LoginEvent>(_onLogin);
  }

  final LoginUseCase _loginUseCase;

  Future<void> _onLogin(LoginEvent event, emit) async {
    emit(state.copyWith(status: AuthenticationStateStatus.loading));
    final loginUseCaseParam = LoginUseCaseParam(
      username: event.username,
      password: event.password,
    );

    final loginResult = await _loginUseCase.call(loginUseCaseParam);

    loginResult.fold(
        (failure) => emit(
              state.copyWith(
                status: AuthenticationStateStatus.failedLogin,
                message: failure.errorMessage,
              ),
            ), (success) {
      getIt<SharedPreferences>()
          .setString(StorageConstant.usernameKey, event.username);

      return emit(
          state.copyWith(status: AuthenticationStateStatus.successLogin));
    });
  }
}
