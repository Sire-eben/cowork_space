import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class TrustedCompanies extends StatelessWidget {
  const TrustedCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 80),
      child: Column(
        children: [
          SelectableText(
            'Trusted by Leading Companies'.allInCaps,
            style: AppStyles.raleway12Smbd.copyWith(),
          ),
          Gap(24),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (context) {
                return Image.asset('assets/images/Logo.png', height: 50);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
