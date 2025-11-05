import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

const outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide.none,
);

UnderlineInputBorder outlineInputErrorBorder = UnderlineInputBorder(
  borderRadius: const BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: AppColors.error, width: 0.9),
);
