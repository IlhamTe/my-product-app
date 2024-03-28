import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
    this.titleStyle,
    this.backgroundColor,
    this.borderSide,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonRadius,
    this.disabledBackgroundColor,
    this.icon,
    this.gapTitleAndIcon,
  });

  final String title;
  final TextStyle? titleStyle;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final BorderSide? borderSide;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? buttonRadius;
  final Widget? icon;
  final double? gapTitleAndIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          surfaceTintColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor ?? AppColors.grey40,
          side: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(buttonRadius ?? 4),
            ),
          ),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (title.isNotEmpty)
              Text(
                title,
                style: titleStyle ??
                    context.textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            SizedBox(
              width: gapTitleAndIcon,
            ),
            icon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
