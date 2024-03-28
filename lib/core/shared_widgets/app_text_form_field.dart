import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_product_app/core/extensions/context_extension.dart';
import 'package:my_product_app/core/styles/app_colors.dart';

typedef ValidatorField = String? Function(String?);

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.focusNode,
    this.labelStyle,
    this.hintStyle,
    this.contentPadding,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.inputFormatters,
    this.isMandatoryField = false,
    this.isReadOnly = false,
    this.onTap,
    this.prefixIcon,
    this.errorSuffixIcon,
    this.maxLength,
    this.autoValidateMode,
    this.onFieldSubmitted,
    this.borderColor,
    this.backgroundColor,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final TextStyle? labelStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool isPassword;
  final Widget? suffixIcon;
  final ValidatorField? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool isMandatoryField;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? errorSuffixIcon;
  final AutovalidateMode? autoValidateMode;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = false;

  @override
  void initState() {
    _obscureText = widget.isPassword;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.label,
                style: widget.labelStyle ??
                    context.textTheme.titleSmall?.copyWith(color: Colors.black),
              ),
              if (widget.isMandatoryField)
                const Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
            ],
          ),
        const SizedBox(
          height: 4,
        ),
        FormField<String?>(
          builder: (state) {
            return TextFormField(
              controller: widget.controller,
              focusNode: widget.focusNode,
              keyboardType: widget.keyboardType,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              maxLength: widget.maxLength,
              inputFormatters: widget.inputFormatters,
              obscureText: _obscureText,
              onChanged: widget.onChanged,
              cursorColor: AppColors.primaryColor,
              onTap: widget.onTap,
              readOnly: widget.isReadOnly,
              autovalidateMode: widget.autoValidateMode,
              onFieldSubmitted: widget.onFieldSubmitted,
              style:
                  context.textTheme.titleMedium?.copyWith(color: Colors.black),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: widget.hintStyle ??
                    context.textTheme.titleMedium
                        ?.copyWith(color: AppColors.grey60),
                counterText: '',
                filled: true,
                fillColor: widget.backgroundColor ?? Colors.white,
                contentPadding: widget.contentPadding ??
                    const EdgeInsets.only(
                      right: 14,
                      top: 12,
                      bottom: 12,
                    ),
                prefixIcon: widget.prefixIcon,
                prefix: widget.prefixIcon == null
                    ? const SizedBox(
                        width: 14,
                      )
                    : null,
                suffixIcon: state.hasError && !widget.isPassword
                    ? (widget.errorSuffixIcon ??
                        const Icon(
                          Icons.error_rounded,
                          color: Colors.red,
                        ))
                    : widget.isPassword
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.primaryColor,
                            ),
                          )
                        : widget.suffixIcon,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.borderColor ?? AppColors.grey50,
                  ),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.borderColor ?? AppColors.primaryColor,
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.red,
                  ),
                ),
                errorStyle: context.textTheme.titleSmall?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
              validator: (_) {
                return widget.validator?.call(widget.controller.text);
              },
            );
          },
          validator: (_) {
            return widget.validator?.call(widget.controller.text);
          },
        ),
      ],
    );
  }
}
