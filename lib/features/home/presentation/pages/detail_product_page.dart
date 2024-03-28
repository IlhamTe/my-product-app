import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/shared_widgets/cart_indicator_widget.dart';
import 'package:my_product_app/core/shared_widgets/footer_button_widget.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/cart/domain/use_cases/add_cart_use_case.dart';
import 'package:my_product_app/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
          onPressed: () => navigate.pop(),
        ),
        actions: [
          IconButton(
            onPressed: () => navigate.pushTo(RouteName.cartProduct),
            icon: BlocSelector<CartBloc, CartState, int>(
              selector: (state) {
                return state.totalProducts;
              },
              builder: (context, totalProducts) {
                return CartIndicatorWidget(
                    totalProductsQuantity: totalProducts);
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CachedNetworkImage(
                imageUrl: product.image,
                height: 200,
                placeholder: (context, url) => const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: AppColors.grey50,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            _PriceAndFavoriteWidget(product.price),
            const SizedBox(
              height: 16,
            ),
            Text(
              product.title,
              style: context.textTheme.headlineMedium?.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Text(
                    '${product.rating.rate} | ',
                    style: context.textTheme.titleSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  Text(
                    '${product.rating.count} terjual',
                    style: context.textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              product.description,
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterButtonWidget(
        onTap: () {
          final addCartParam = AddCartParam(
            productId: product.id,
            productName: product.title,
            image: product.image,
            price: product.price,
            quantity: 1,
          );

          context.read<CartBloc>().add(AddCartEvent(addCartParam));
        },
        title: 'Tambahkan ke Keranjang',
      ),
    );
  }
}

class _PriceAndFavoriteWidget extends StatelessWidget {
  const _PriceAndFavoriteWidget(this.price);

  final double price;

  static final ValueNotifier<bool> _isFavoriteNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'USD $price',
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () => _isFavoriteNotifier.value = !_isFavoriteNotifier.value,
          child: ValueListenableBuilder(
              valueListenable: _isFavoriteNotifier,
              builder: (_, isFavorite, __) {
                if (isFavorite) {
                  return const Icon(
                    Icons.favorite,
                    color: AppColors.primaryColor,
                  );
                }

                return const Icon(
                  Icons.favorite_border_outlined,
                  color: AppColors.primaryColor,
                );
              }),
        ),
      ],
    );
  }
}
