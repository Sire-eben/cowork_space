import "package:breej_hub_mobile/core/utils/__utils.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class AppTextField extends StatelessWidget {
  final String? labelText, prefixText;
  final String? initialValue;
  final Widget? suffixIcon, suffix;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final FormFieldSetter<String>? onChanged;
  final void Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool enabled, readOnly;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle, prefixStyle;
  final TextStyle? errorStyle;
  final TextStyle? style;
  final String? suffixText;
  final InputDecoration? decoration;
  final AutovalidateMode? autoValidateMode;
  final TextCapitalization? textCapitalization;
  final bool withBorder, withBottomInset;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor, borderColor, cursorColor;
  final TextAlign textAlign;
  final int? minLines;
  final int? maxLines;
  final Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final double? topRadius;
  final double? bottomRadius;

  const AppTextField({
    super.key,
    this.contentPadding,
    this.labelText,
    this.prefixText,
    this.initialValue,
    this.style,
    this.suffixIcon,
    this.suffix,
    this.keyboardType,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.focusNode,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.controller,
    this.labelStyle,
    this.hintStyle,
    this.prefixStyle,
    this.errorStyle,
    this.suffixText,
    this.decoration,
    this.autoValidateMode,
    this.cursorColor,
    this.maxLength,
    this.enabled = true,
    this.obscureText = false,
    this.textCapitalization,
    this.withBorder = true,
    this.withBottomInset = true,
    this.fillColor,
    this.borderColor,
    this.textAlign = TextAlign.left,
    this.textInputAction = TextInputAction.done,
    this.minLines,
    this.maxLines,
    this.onSubmitted,
    this.onTap,
    this.topRadius,
    this.bottomRadius,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final underlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(bottomRadius ?? 7),
        top: Radius.circular(topRadius ?? 7),
      ),
      borderSide: !withBorder
          ? BorderSide.none
          : BorderSide(color: borderColor ?? Colors.white, width: 0.3),
    );

    final underlinedInputErrorBorder = underlinedInputBorder.copyWith(
      borderSide: underlinedInputBorder.borderSide.copyWith(color: AppColors.error),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: labelStyle ?? AppStyles.raleway16Md.copyWith(color: AppColors.black2),
          ),
          const Gap(8),
        ],
        TextFormField(
          readOnly: readOnly,
          onTap: onTap,
          controller: controller,
          textAlign: textAlign,
          onSaved: (input) => onSaved?.call((input ?? "").trim()),
          autovalidateMode: autoValidateMode,
          obscureText: obscureText,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          focusNode: focusNode,
          inputFormatters: inputFormatters,
          initialValue: initialValue,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          enabled: enabled,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          validator: validator,
          textAlignVertical: TextAlignVertical.center,
          // textAlign: TextAlign.center,
          onFieldSubmitted: onSubmitted,
          style: style ?? AppStyles.interGeneral(14, FontWeight.w500, color: AppColors.white),
          cursorColor: cursorColor ?? AppColors.white,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          decoration:
              decoration ??
              InputDecoration(
                filled: true,
                fillColor: fillColor ?? Colors.transparent,
                suffixText: suffixText,
                prefixText: prefixText,
                prefixIcon: prefixIcon,
                suffix: suffix,
                suffixIcon: suffixIcon,
                suffixIconColor: AppColors.primary,
                hintText: hintText,
                errorText: errorText,
                errorStyle:
                    errorStyle ??
                    AppStyles.interGeneral(
                      12,
                      FontWeight.w400,
                      color: AppColors.error,
                    ).copyWith(fontStyle: FontStyle.italic),
                prefixStyle:
                    prefixStyle ??
                    AppStyles.interGeneral(14, FontWeight.w600, color: AppColors.black2),
                labelStyle: labelStyle,
                hintStyle:
                    hintStyle ??
                    AppStyles.raleway14Rg.copyWith(color: AppColors.white.withOpacity(.5)),
                contentPadding:
                    contentPadding ?? const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: withBorder ? underlinedInputBorder : underlinedInputBorder,
                enabledBorder: withBorder ? underlinedInputBorder : underlinedInputBorder,
                focusedBorder: withBorder ? underlinedInputBorder : underlinedInputBorder,
                errorBorder: underlinedInputErrorBorder,
                focusedErrorBorder: underlinedInputErrorBorder,
                disabledBorder: withBorder ? underlinedInputBorder : underlinedInputBorder,
              ),
        ),
        if (withBottomInset) const Gap(20),
      ],
    );
  }
}
