import "package:breej_hub_mobile/core/utils/__utils.dart";
import "package:flutter/material.dart";
import "package:gap/gap.dart";

class AppDropdownField<T> extends StatefulWidget {
  final String? labelText;
  final List<T> dropdownItems;
  final T? initialValue;
  final void Function(T?)? onChanged;
  final String Function(T)? itemToString;
  final bool enabled;
  final Color? fillColor, borderColor;
  final double? borderRadius;
  final TextStyle? labelStyle, hintStyle, style, prefixStyle, errorStyle;
  final String? hintText, errorText;
  final EdgeInsetsGeometry? contentPadding;
  final bool withBorder, withBottomInset;

  const AppDropdownField({
    super.key,
    required this.dropdownItems,
    this.initialValue,
    this.onChanged,
    this.itemToString,
    this.labelText,
    this.enabled = true,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.labelStyle,
    this.hintStyle,
    this.style,
    this.prefixStyle,
    this.errorStyle,
    this.hintText,
    this.errorText,
    this.contentPadding,
    this.withBorder = true,
    this.withBottomInset = true,
  });

  @override
  _AppDropdownFieldState<T> createState() => _AppDropdownFieldState<T>();
}

class _AppDropdownFieldState<T> extends State<AppDropdownField<T>> {
  T? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(widget.borderRadius ?? 5);

    final borderSide = BorderSide(
      width: 1.2,
      color: widget.borderColor ?? AppColors.transparentPrimary,
    );

    final inputBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: widget.withBorder ? borderSide : BorderSide.none,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: widget.labelStyle ?? AppStyles.raleway14Md.copyWith(color: AppColors.black2),
          ),
          const Gap(10),
        ],
        DropdownButtonFormField<T>(
          value: selectedValue,
          items: widget.dropdownItems.map((T value) {
            return DropdownMenuItem<T>(
              value: value,
              child: Text(
                widget.itemToString?.call(value) ?? value.toString(),
                style:
                    widget.style ??
                    AppStyles.interGeneral(14, FontWeight.w500, color: AppColors.black2),
              ),
            );
          }).toList(),
          onChanged: widget.enabled
              ? (newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                  if (widget.onChanged != null) {
                    widget.onChanged!(newValue);
                  }
                }
              : null,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.fillColor ?? AppColors.white,
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ?? AppStyles.raleway12Rg.copyWith(color: AppColors.grey2),
            errorText: widget.errorText,
            errorStyle:
                widget.errorStyle ??
                AppStyles.interGeneral(14, FontWeight.w600, color: AppColors.error),
            contentPadding:
                widget.contentPadding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            border: inputBorder,
            enabledBorder: inputBorder,
            focusedBorder: inputBorder.copyWith(
              borderSide: borderSide.copyWith(color: AppColors.primary),
            ),
            errorBorder: inputBorder.copyWith(
              borderSide: borderSide.copyWith(color: AppColors.error),
            ),
            disabledBorder: inputBorder.copyWith(
              borderSide: borderSide.copyWith(color: AppColors.grey3),
            ),
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Color(0xFF4F4F4F)),
        ),
        if (widget.withBottomInset) const Gap(Insets.l),
      ],
    );
  }
}
