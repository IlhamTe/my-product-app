import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

class RatingLabelWidget extends StatelessWidget {
  const RatingLabelWidget({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
            size: 14,
          ),
          Text(
            rate.toString(),
            style: context.textTheme.titleSmall?.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
