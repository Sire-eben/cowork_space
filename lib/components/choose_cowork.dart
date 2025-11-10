import 'package:breej_hub_mobile/core/shared_widgets/image.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class ChooseCowork extends StatelessWidget {
  const ChooseCowork({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final Color color;
  final SvgGenImage icon;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Column(
            spacing: isMobile(context) ? 12 : 24,
            children: [
              Stack(
                clipBehavior: Clip.none,

                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                  ),
                  Positioned(top: -10, left: -10, child: LocalSvgIcon(icon.path, size: 45)),
                ],
              ),
              SelectableText(
                title,
                style: AppStyles.raleway24Xbd.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile(context) ? 16 : 24,
                ),
                textAlign: TextAlign.center,
              ),
              SelectableText(subtitle, style: AppStyles.raleway14Rg, textAlign: TextAlign.center),
            ],
          )
        : Expanded(
            child: Column(
              spacing: isMobile(context) ? 12 : 24,
              children: [
                Stack(
                  clipBehavior: Clip.none,

                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                    ),
                    Positioned(top: -10, left: -10, child: LocalSvgIcon(icon.path, size: 45)),
                  ],
                ),
                SelectableText(
                  title,
                  style: AppStyles.raleway24Xbd.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile(context) ? 16 : 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                SelectableText(subtitle, style: AppStyles.raleway14Rg, textAlign: TextAlign.center),
              ],
            ),
          );
  }
}
