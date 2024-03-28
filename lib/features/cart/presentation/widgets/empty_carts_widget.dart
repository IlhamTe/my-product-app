import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

class EmptyCartsWidget extends StatelessWidget {
  const EmptyCartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.remove_shopping_cart,
          size: 100,
          color: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Belum ada produk di keranjang\nSilahkan tambah produk terlebih dahulu',
          textAlign: TextAlign.center,
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
