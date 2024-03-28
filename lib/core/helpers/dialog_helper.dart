import 'package:flutter/material.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/shared_widgets/app_button.dart';

class DialogHelper {
  DialogHelper._();

  static Future<void> showConfirmDialog(
    BuildContext parentContext, {
    Widget? dialogIcon,
    String? contentTitle,
    TextStyle? contentTitleStyle,
    String? contentSubtitle,
    TextStyle? contentSubtitleStyle,
    required String positiveTitleButton,
    TextStyle? positiveTitleButtonStyle,
    Color? positiveButtonColor,
    required VoidCallback onTapPositiveButton,
    double? positiveButtonWidth,
    String? negativeTitleButton,
    TextStyle? negativeTitleButtonStyle,
    Color? negativeButtonColor,
    BorderSide? negativeBorderSideButton,
    VoidCallback? onTapNegativeButton,
    double? negativeButtonWidth,
    bool showNegativeButton = false,
  }) async {
    return showDialog(
      context: parentContext,
      builder: (_) {
        return AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (dialogIcon != null) dialogIcon,
              SizedBox(
                height: dialogIcon != null ? 16 : 0,
              ),
              if (contentTitle != null)
                Text(
                  contentTitle,
                  textAlign: TextAlign.center,
                  style: contentTitleStyle ??
                      parentContext.textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              if (contentSubtitle != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    contentSubtitle,
                    textAlign: TextAlign.center,
                    style: contentSubtitleStyle ??
                        parentContext.textTheme.titleSmall?.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                  ),
                )
            ],
          ),
          actions: [
            Column(
              children: [
                AppButton(
                  title: positiveTitleButton,
                  titleStyle: positiveTitleButtonStyle ??
                      parentContext.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                  backgroundColor: positiveButtonColor,
                  onTap: onTapPositiveButton,
                  // buttonWidth: positiveButtonWidth ?? 248,
                  buttonHeight: 45,
                ),
                SizedBox(
                  height: showNegativeButton ? 10 : 0,
                ),
                if (showNegativeButton)
                  AppButton(
                    title: negativeTitleButton ?? '',
                    titleStyle: negativeTitleButtonStyle,
                    onTap: onTapNegativeButton,
                    backgroundColor: negativeButtonColor,
                    borderSide: negativeBorderSideButton,
                    // buttonWidth: negativeButtonWidth ?? 248,
                    buttonHeight: 45,
                  )
              ],
            )
          ],
        );
      },
    );
  }
}
