import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class ReusableDropdownFormField<T> extends StatelessWidget {
  final FormFieldValidator<T>? validator;
  final String? hint, disabledHint, labelText;
  final InputDecoration? decoration;
  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final ValueChanged<T?>? onChanged;
  final bool isCompulsory, withBottomInset;
  final bool withBorder, enabled;
  final Widget? prefixIcon;
  final EdgeInsets? contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final double? menuMaxHeight;

  const ReusableDropdownFormField({
    super.key,
    this.validator,
    this.hint,
    this.disabledHint,
    this.decoration,
    this.value,
    this.items,
    this.onChanged,
    this.labelText,
    this.isCompulsory = false,
    this.withBorder = false,
    this.enabled = true,
    this.withBottomInset = true,
    this.prefixIcon,
    this.contentPadding,
    this.hintStyle,
    this.labelStyle,
    this.menuMaxHeight,
  });

  @override
  Widget build(BuildContext context) {
    final underlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: AppColors.grey1.withOpacity(.2), width: 1),
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
            style: labelStyle ?? AppStyles.raleway14Md.copyWith(color: AppColors.black2),
          ),
          const Gap(10),
        ],
        DropdownButtonFormField<T>(
          menuMaxHeight: menuMaxHeight ?? MediaQuery.of(context).size.height * .6,
          borderRadius: BorderRadius.circular(16),
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          isExpanded: true,
          enableFeedback: true,
          validator: validator,
          hint: Text(
            hint ?? 'Select item',
            style: hintStyle ?? AppStyles.raleway14Rg.copyWith(color: AppColors.grey1),
          ),
          disabledHint: Text(
            disabledHint ?? 'Select item',
            style: hintStyle ?? AppStyles.raleway14Rg.copyWith(color: AppColors.grey1),
          ),
          dropdownColor: Colors.white,
          elevation: 25,
          style: AppStyles.raleway14Rg,
          decoration:
              decoration ??
              InputDecoration(
                prefixIcon: prefixIcon,
                enabled: enabled,
                filled: true,
                fillColor: Colors.white,
                hintStyle: hintStyle ?? AppStyles.raleway12Rg.copyWith(color: AppColors.grey2),
                contentPadding:
                    contentPadding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                enabledBorder: withBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Color(0xffeeeeee)),
                      )
                    : underlinedInputBorder,
                focusedBorder: withBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Color(0xffeeeeee)),
                      )
                    : underlinedInputBorder,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: AppColors.error, width: 1),
                ),
                focusedErrorBorder: underlinedInputErrorBorder,
                disabledBorder: withBorder
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Color(0xffeeeeee)),
                      )
                    : underlinedInputBorder,
              ),
          value: value,
          items: items,
          onChanged: onChanged,
        ),
        if (withBottomInset) const Gap(16),
      ],
    );
  }
}
