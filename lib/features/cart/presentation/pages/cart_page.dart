import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/app_toast_helper.dart';
import 'package:my_product_app/core/helpers/dialog_helper.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/shared_widgets/app_button.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/cart/domain/use_cases/update_product_quantity_use_case.dart';
import 'package:my_product_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:my_product_app/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:my_product_app/features/cart/presentation/widgets/empty_carts_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    context.read<CartBloc>().add(const GetAllCartsEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        if (state.status == CartStateStatus.successDeleteAllCarts) {
          AppToastHelper.showToast(
            context,
            title: 'Berhasil Menghapus Semua Produk',
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: AppColors.primaryColor,
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
              ),
              onPressed: () => navigate.pop(),
            ),
            centerTitle: true,
            title: Text(
              'DAFTAR KERANJANG',
              style: context.textTheme.titleLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              if (state.carts.isNotEmpty)
                IconButton(
                  onPressed: () {
                    DialogHelper.showConfirmDialog(
                      context,
                      contentSubtitle:
                          'Anda yakin ingin menghapus semua produk di keranjang?',
                      dialogIcon: Container(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.error,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      positiveTitleButton: 'Ya, Hapus',
                      onTapPositiveButton: () {
                        // Close the dialog
                        navigate.pop();
                        context
                            .read<CartBloc>()
                            .add(const DeleteAllCartsEvent());
                      },
                      showNegativeButton: true,
                      negativeTitleButton: 'Tidak, Kembali',
                      negativeTitleButtonStyle: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      ),
                      negativeButtonColor: const Color(0xFFF1F6FF),
                      negativeBorderSideButton: const BorderSide(
                        color: Color(0xFFD7E0EE),
                        width: 1.0,
                      ),
                      onTapNegativeButton: () {
                        navigate.pop();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                )
            ],
          ),
          body: state.carts.isEmpty
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: EmptyCartsWidget(),
                    ),
                  ],
                )
              : ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  itemCount: state.carts.length,
                  itemBuilder: (_, index) {
                    final cart = state.carts[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CartItemWidget(
                        cart: cart,
                        onDeleteCart: () {
                          context.read<CartBloc>().add(DeleteCartEvent(index));
                        },
                        onDecreaseQuantity: () {
                          final int quantity = cart.quantity - 1;
                          final updateQuantityParam =
                              UpdateProductQuantityParam(
                            index: index,
                            productId: cart.productId,
                            productName: cart.productName,
                            image: cart.image,
                            price: cart.price,
                            quantity: quantity,
                          );

                          if (quantity < 1) {
                            context
                                .read<CartBloc>()
                                .add(DeleteCartEvent(index));
                          } else {
                            context.read<CartBloc>().add(
                                UpdateProductQuantityEvent(
                                    updateQuantityParam));
                          }
                        },
                        onIncreaseQuantity: () {
                          final updateQuantityParam =
                              UpdateProductQuantityParam(
                            index: index,
                            productId: cart.productId,
                            productName: cart.productName,
                            image: cart.image,
                            price: cart.price,
                            quantity: cart.quantity + 1,
                          );

                          context.read<CartBloc>().add(
                              UpdateProductQuantityEvent(updateQuantityParam));
                        },
                      ),
                    );
                  },
                ),
          bottomNavigationBar: state.carts.isNotEmpty
              ? _CartFooterButton(
                  totalPrice: state.totalPrice,
                  totalProductQuantity: state.totalProducts,
                )
              : null,
        );
      },
    );
  }
}

class _CartFooterButton extends StatelessWidget {
  const _CartFooterButton({
    required this.totalPrice,
    required this.totalProductQuantity,
  });

  final double totalPrice;
  final int totalProductQuantity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey30,
              blurRadius: 1,
              offset: Offset(0, -1), // Shadow position
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total $totalProductQuantity Produk',
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.grey70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'USD ${totalPrice.toStringAsFixed(1)}',
                  style: context.textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            AppButton(
              title: 'BAYAR SEKARANG',
              titleStyle: context.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              buttonHeight: 52,
              backgroundColor: AppColors.primaryColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
