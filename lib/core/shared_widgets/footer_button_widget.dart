import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

import 'app_button.dart';

class FooterButtonWidget extends StatelessWidget {
  const FooterButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.isActiveButton = true,
    this.icon,
  });

  final String title;
  final bool isActiveButton;
  final VoidCallback? onTap;
  final Widget? icon;

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
        child: AppButton(
          title: title,
          titleStyle: context.textTheme.titleLarge?.copyWith(
            color: isActiveButton == true ? Colors.white : AppColors.grey70,
            fontWeight: FontWeight.w600,
          ),
          buttonHeight: 52,
          backgroundColor: AppColors.primaryColor,
          icon: icon,
          gapTitleAndIcon: icon == null ? 0 : 10,
          onTap: onTap,
        ),
      ),
    );
  }
}
