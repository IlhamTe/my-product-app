part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login({
    required String username,
    required String password,
  }) = LoginEvent;
}
