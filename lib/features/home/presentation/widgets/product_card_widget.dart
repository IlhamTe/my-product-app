import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/helpers/navigation_helper.dart';
import 'package:my_product_app/core/route/route_name.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:my_product_app/features/home/domain/entities/product_entity.dart';
import 'package:my_product_app/features/home/presentation/widgets/rating_label_widget.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate.pushTo(RouteName.detailProduct, data: product),
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CachedNetworkImage(
                      imageUrl: product.image,
                      height: 120,
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
                    height: 12,
                  ),
                  Text(
                    product.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Text(
                    'USD ${product.price}',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: RatingLabelWidget(rate: product.rating.rate),
            )
          ],
        ),
      ),
    );
  }
}
