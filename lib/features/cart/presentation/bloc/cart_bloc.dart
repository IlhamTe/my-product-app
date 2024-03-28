import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_product_app/core/extensions/either_extension.dart';
import 'package:my_product_app/core/use_case/use_case.dart';
import 'package:my_product_app/features/cart/domain/entities/cart_entity.dart';
import 'package:my_product_app/features/cart/domain/use_cases/add_cart_use_case.dart';
import 'package:my_product_app/features/cart/domain/use_cases/delete_all_carts_use_case.dart';
import 'package:my_product_app/features/cart/domain/use_cases/delete_cart_use_case.dart';
import 'package:my_product_app/features/cart/domain/use_cases/get_all_carts_use_case.dart';
import 'package:my_product_app/features/cart/domain/use_cases/update_product_quantity_use_case.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(
      this._getAllCartsUseCase,
      this._addCartUseCase,
      this._updateProductQuantityUseCase,
      this._deleteCartUseCase,
      this._deleteAllCartUseCase)
      : super(const CartState()) {
    on<GetAllCartsEvent>(_onGetAllCarts);
    on<AddCartEvent>(_onAddCart);
    on<UpdateProductQuantityEvent>(_onUpdateProductQuantity);
    on<DeleteCartEvent>(_onDeleteCart);
    on<DeleteAllCartsEvent>(_onDeleteAllCart);
    on<CountTotalPriceAndQuantityProductsEvent>(
        _onCountTotalPriceAndQuantityProducts);
  }

  final GetAllCartsUseCase _getAllCartsUseCase;
  final AddCartUseCase _addCartUseCase;
  final UpdateProductQuantityUseCase _updateProductQuantityUseCase;
  final DeleteCartUseCase _deleteCartUseCase;
  final DeleteAllCartsUseCase _deleteAllCartUseCase;

  Future<void> _onGetAllCarts(GetAllCartsEvent event, emit) async {
    emit(state.copyWith(status: CartStateStatus.loading));
    final getAllCartsResult = await _getAllCartsUseCase.call(NoParams());

    getAllCartsResult.fold(
      (failures) => emit(
        state.copyWith(
          message: failures.errorMessage,
          status: CartStateStatus.failed,
        ),
      ),
      (carts) {
        add(const CountTotalPriceAndQuantityProductsEvent());

        return emit(
          state.copyWith(
            status: CartStateStatus.success,
            carts: carts,
          ),
        );
      },
    );
  }

  Future<void> _onAddCart(AddCartEvent event, emit) async {
    emit(state.copyWith(status: CartStateStatus.loading));

    final bool isProductExist =
        state.carts.any((cart) => cart.productId == event.param.productId);

    if (isProductExist) {
      // Update quantity when product is already in the cart
      int index = -1;
      int currentQuantity = 0;
      for (int i = 0; i < state.carts.length; i++) {
        if (state.carts[i].productId == event.param.productId) {
          index = i;
          currentQuantity = state.carts[i].quantity;
          break;
        }
      }

      final param = UpdateProductQuantityParam(
        index: index,
        productId: event.param.productId,
        productName: event.param.productName,
        image: event.param.image,
        price: event.param.price,
        quantity: currentQuantity + 1,
      );
      final updateProductQuantityResult =
          await _updateProductQuantityUseCase.call(param);

      if (updateProductQuantityResult.isRight()) {
        // Update the current carts from state
        List<CartEntity> currentCarts = List.from(state.carts);
        currentCarts[index] = updateProductQuantityResult.getRight();
        emit(state.copyWith(carts: currentCarts));

        // Count Total Price and Quantity Products
        add(const CountTotalPriceAndQuantityProductsEvent());
      }
    } else {
      final addCartResult = await _addCartUseCase.call(event.param);

      addCartResult.fold(
        (failures) => emit(
          state.copyWith(
            message: failures.errorMessage,
            status: CartStateStatus.failed,
          ),
        ),
        (_) {
          add(const GetAllCartsEvent());

          return emit(
            state.copyWith(
              status: CartStateStatus.success,
            ),
          );
        },
      );
    }
  }

  Future<void> _onUpdateProductQuantity(
      UpdateProductQuantityEvent event, emit) async {
    List<CartEntity> currentCarts = List<CartEntity>.from(state.carts);

    final updateProductQuantityResult =
        await _updateProductQuantityUseCase.call(event.param);

    updateProductQuantityResult.fold(
      (l) => emit(state.copyWith(status: CartStateStatus.failed)),
      (updatedProduct) {
        currentCarts[event.param.index] = updatedProduct;

        add(const CountTotalPriceAndQuantityProductsEvent());

        return emit(
          state.copyWith(
            status: CartStateStatus.success,
            carts: currentCarts,
          ),
        );
      },
    );
  }

  Future<void> _onDeleteCart(DeleteCartEvent event, emit) async {
    final deleteCartResult = await _deleteCartUseCase.call(event.index);

    deleteCartResult.fold(
      (failures) => emit(
        state.copyWith(
          message: failures.errorMessage,
          status: CartStateStatus.failed,
        ),
      ),
      (_) {
        add(const CountTotalPriceAndQuantityProductsEvent());

        List<CartEntity> currentCarts = List<CartEntity>.from(state.carts);
        currentCarts.removeAt(event.index);

        return emit(
          state.copyWith(
            status: CartStateStatus.success,
            carts: currentCarts,
          ),
        );
      },
    );
  }

  Future<void> _onDeleteAllCart(DeleteAllCartsEvent event, emit) async {
    final deleteAllCartResult = await _deleteAllCartUseCase.call(NoParams());

    deleteAllCartResult.fold(
      (failures) => emit(
        state.copyWith(
          message: failures.errorMessage,
          status: CartStateStatus.failed,
        ),
      ),
      (_) {
        add(const CountTotalPriceAndQuantityProductsEvent());

        return emit(
          state.copyWith(
            status: CartStateStatus.successDeleteAllCarts,
            carts: [],
          ),
        );
      },
    );
  }

  Future<void> _onCountTotalPriceAndQuantityProducts(
      CountTotalPriceAndQuantityProductsEvent event, emit) async {
    final getAllCartsResult = await _getAllCartsUseCase.call(NoParams());

    getAllCartsResult.fold(
      (failures) => emit(
        state.copyWith(
          message: failures.errorMessage,
          status: CartStateStatus.failed,
        ),
      ),
      (carts) {
        double totalPrice = 0;
        int totalProduct = 0;

        for (CartEntity cart in carts) {
          totalPrice += (cart.quantity * cart.price);
          totalProduct += cart.quantity;
        }

        return emit(
          state.copyWith(
            status: CartStateStatus.success,
            totalPrice: totalPrice,
            totalProducts: totalProduct,
          ),
        );
      },
    );
  }
}
