import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({
    super.key,
    required this.color,
    required this.text,
    required this.name,
    required this.occupation,
    required this.image,
    this.topMargin,
  });
  final Color color;
  final String text, name, occupation, image;
  final double? topMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 311,
      width: 360,
      margin: EdgeInsets.only(top: topMargin ?? 0),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, width: 56, height: 56, fit: BoxFit.cover),
          Gap(24),
          SelectableText(text, style: AppStyles.raleway14Rg, textAlign: TextAlign.center),
          Gap(24),
          SelectableText(
            name.allInCaps,
            style: AppStyles.raleway12Smbd,
            textAlign: TextAlign.center,
          ),
          SelectableText(occupation, style: AppStyles.raleway14Rg, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
