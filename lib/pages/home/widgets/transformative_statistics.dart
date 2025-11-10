import 'package:breej_hub_mobile/components/statistics_widget.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class TransformativeStatistics extends StatelessWidget {
  const TransformativeStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    if (isMobile(context)) {
      return Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText(
              'Cowork in numbers'.allInCaps,
              style: AppStyles.raleway12Smbd.copyWith(),
              textAlign: TextAlign.center,
            ),
            Gap(16),
            SelectableText(
              'Transformative Statistics That Speak Volumes',
              style: AppStyles.raleway13Bd.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Gap(32),
            Row(
              children: [
                StatisticsWidget(
                  color: Color(0xFFD3F985),
                  title: 'Community Growth',
                  value: '240%',
                ),
                StatisticsWidget(
                  color: Color(0xFFA6E8F6),
                  title: 'Technology Uptime',
                  value: '99%',
                ),
              ],
            ),
            Gap(24),
            Row(
              children: [
                StatisticsWidget(color: Color(0xFFD3F985), title: 'Happy Members', value: '50+'),
                StatisticsWidget(
                  color: Color(0xFFA6E8F6),
                  title: 'Renewable Energy Sources',
                  value: '100%',
                ),
              ],
            ),
            Gap(32),
            Container(
              height: 320,
              width: context.getWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: DecorationImage(
                  image: AssetImage('assets/images/header2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 112),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'Cowork in numbers'.allInCaps,
                    style: AppStyles.raleway12Smbd.copyWith(),
                  ),
                  Gap(16),
                  SelectableText(
                    'Transformative Statistics That Speak Volumes',
                    style: AppStyles.raleway13Bd.copyWith(fontSize: 48),
                  ),
                  Gap(32),
                  Row(
                    children: [
                      StatisticsWidget(
                        color: Color(0xFFD3F985),
                        title: 'Community Growth',
                        value: '240%',
                      ),
                      StatisticsWidget(
                        color: Color(0xFFA6E8F6),
                        title: 'Technology Uptime',
                        value: '99%',
                      ),
                    ],
                  ),
                  Gap(24),
                  Row(
                    children: [
                      StatisticsWidget(
                        color: Color(0xFFD3F985),
                        title: 'Happy Members',
                        value: '50+',
                      ),
                      StatisticsWidget(
                        color: Color(0xFFA6E8F6),
                        title: 'Renewable Energy Sources',
                        value: '100%',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 640,
                width: 610,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  image: DecorationImage(
                    image: AssetImage('assets/images/header2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
