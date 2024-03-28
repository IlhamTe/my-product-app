part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(AuthenticationStateStatus.initial)
    AuthenticationStateStatus status,
    @Default('') String message,
  }) = _AuthenticationState;
}

enum AuthenticationStateStatus {
  initial,
  loading,
  successLogin,
  failedLogin;
}
