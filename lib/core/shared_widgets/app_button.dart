import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.bgColor,
    this.textColor,
    this.height = 47,
    this.width,
    this.borderRadius,
    this.fontSize,
    this.loading = false,
    this.withIcon = false,
    this.elevation = 0,
    this.textStyle,
    this.borderColor,
    this.icon,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final double height;
  final double? width;
  final double? borderRadius;
  final double? fontSize;
  final bool loading, withIcon;
  final double elevation;
  final TextStyle? textStyle;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: bgColor ?? AppColors.primary,
        shadowColor: Color(0xff387ADF).withOpacity(.5),
        foregroundColor: textColor ?? AppColors.white,
        fixedSize: Size(width ?? context.width, height),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: borderColor ?? AppColors.primary),
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
      ),
      child: loading
          ? SizedBox(
              height: height / 2,
              width: height / 2,
              child: const CupertinoActivityIndicator(),
            )
          : Text(
              text,
              style:
                  textStyle ??
                  AppStyles.raleway14Bd.copyWith(
                    color: textColor ?? AppColors.white,
                    fontSize: fontSize,
                  ),
            ),
    );
  }
}
