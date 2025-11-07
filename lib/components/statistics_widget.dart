import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({
    super.key,
    required this.color,
    required this.title,
    required this.value,
  });
  final Color color;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,

            children: [
              Positioned(
                bottom: -5,
                right: 40,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),

              SelectableText(
                value,
                style: AppStyles.raleway24Xbd.copyWith(fontWeight: FontWeight.bold, fontSize: 48),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Gap(8),

          SelectableText(title, style: AppStyles.raleway14Rg, textAlign: TextAlign.left),
        ],
      ),
    );
  }
}
