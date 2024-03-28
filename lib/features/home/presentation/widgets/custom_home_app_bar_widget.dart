import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_product_app/core/constants/image_constant.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/shared_widgets/cart_indicator_widget.dart';
import 'package:my_product_app/features/cart/presentation/bloc/cart_bloc.dart';

class CustomHomeAppBarWidget extends StatelessWidget {
  const CustomHomeAppBarWidget({super.key, required this.onTapAvatar});
  final VoidCallback onTapAvatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTapAvatar,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: Image.network(ImageConstant.dummyProfile).image,
            ),
          ),
          const Spacer(),
          Text(
            'MY PRODUCT APP',
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => navigate.pushTo(RouteName.cartProduct),
            child: BlocSelector<CartBloc, CartState, int>(
              selector: (state) {
                return state.totalProducts;
              },
              builder: (context, totalProducts) {
                return CartIndicatorWidget(
                    totalProductsQuantity: totalProducts);
              },
            ),
          ),
        ],
      ),
    );
  }
}
