import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

class CartIndicatorWidget extends StatelessWidget {
  const CartIndicatorWidget({
    super.key,
    required this.totalProductsQuantity,
  });
  final int totalProductsQuantity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.shopping_cart,
          color: AppColors.primaryColor,
        ),
        if (totalProductsQuantity > 0)
          Positioned(
            top: 0,
            right: 0,
            child: Transform.translate(
              offset: const Offset(0, -5),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  totalProductsQuantity.toString(),
                  style: context.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
