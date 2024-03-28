part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(CartStateStatus.initial) CartStateStatus status,
    @Default('') String message,
    @Default([]) List<CartEntity> carts,
    @Default(0) double totalPrice,
    @Default(0) int totalProducts,
  }) = _CartState;
}

enum CartStateStatus {
  initial,
  loading,
  success,
  successDeleteAllCarts,
  failed;
}
