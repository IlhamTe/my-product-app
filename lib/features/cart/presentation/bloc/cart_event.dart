part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getAllCarts() = GetAllCartsEvent;
  const factory CartEvent.addCart(AddCartParam param) = AddCartEvent;
  const factory CartEvent.updateProductQuantity(
      UpdateProductQuantityParam param) = UpdateProductQuantityEvent;
  const factory CartEvent.deleteCart(int index) = DeleteCartEvent;
  const factory CartEvent.deleteAllCarts() = DeleteAllCartsEvent;
  const factory CartEvent.countTotalPriceAndQuantityProducts() =
      CountTotalPriceAndQuantityProductsEvent;
}
