part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStateStatus.initial) HomeStateStatus status,
    @Default([]) List<String> categories,
    @Default([]) List<ProductEntity> defaultProducts,
    @Default([]) List<ProductEntity> filteredProducts,
    @Default('') String message,
    @Default('-') String username,
  }) = _HomeState;
}

enum HomeStateStatus {
  initial,
  loading,
  success,
  failed;
}
