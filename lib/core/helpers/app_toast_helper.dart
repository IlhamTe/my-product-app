import 'package:flutter/material.dart';
import 'package:my_product_app/core/styles/app_colors.dart';
import 'package:toastification/toastification.dart';

class AppToastHelper {
  AppToastHelper._();

  static ToastificationItem showToast(
    BuildContext context, {
    required String title,
    Color? primaryColor,
    Widget? icon,
    ToastificationType? toastType,
  }) {
    return toastification.show(
      context: context,
      type: toastType ?? ToastificationType.success,
      style: ToastificationStyle.flatColored,
      primaryColor: primaryColor ?? AppColors.primaryColor,
      backgroundColor: Colors.white,
      title: Text(title),
      showProgressBar: false,
      autoCloseDuration: const Duration(seconds: 2),
      alignment: Alignment.topCenter,
      icon: icon,
    );
  }
}
