import 'package:flutter/material.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 1,
      color: color ?? AppColors.black.withOpacity(.2),
    );
  }
}
