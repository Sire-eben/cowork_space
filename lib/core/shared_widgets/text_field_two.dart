import "package:breej_hub_mobile/core/utils/__utils.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class TextFieldTwo extends StatelessWidget {
  final String? labelText, prefixText;
  final String? initialValue;
  final Widget? suffixIcon;
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
  final bool enabled;
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
  final Color? fillColor, borderColor;
  final TextAlign textAlign;
  final int? minLines;
  final int? maxLines;
  final Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final double? topRadius;
  final double? bottomRadius;

  const TextFieldTwo({
    super.key,
    this.contentPadding,
    this.labelText,
    this.prefixText,
    this.initialValue,
    this.style,
    this.suffixIcon,
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
  });

  @override
  Widget build(BuildContext context) {
    final underlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(bottomRadius ?? 55),
        top: Radius.circular(topRadius ?? 55),
      ),
      borderSide: !withBorder
          ? BorderSide.none
          : BorderSide(color: borderColor ?? Color(0xffeeeeee), width: 1),
    );
    return Container(
      height: 70,
      margin: EdgeInsets.only(bottom: withBottomInset ? 16 : 0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(bottomRadius ?? 55),
          top: Radius.circular(topRadius ?? 55),
        ),
        border: !withBorder
            ? Border.all(width: 0)
            : Border.all(color: borderColor ?? Color(0xffeeeeee), width: 1),
      ),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: TextFormField(
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
        style: style ?? AppStyles.interGeneral(14, FontWeight.w500, color: AppColors.black2),
        cursorColor: AppColors.black2,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        decoration:
            decoration ??
            InputDecoration(
              filled: true,
              fillColor: fillColor ?? AppColors.white,
              suffixText: suffixText,
              prefixText: prefixText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColors.primary,
              hintText: hintText,
              labelText: labelText,
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
              hintStyle: hintStyle ?? AppStyles.raleway12Rg.copyWith(color: AppColors.grey2),
              contentPadding: contentPadding ?? EdgeInsets.zero,
              border: underlinedInputBorder,
              enabledBorder: underlinedInputBorder,
              focusedBorder: underlinedInputBorder,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
      ),
    );
  }
}
