import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class ExploreCowork extends StatelessWidget {
  const ExploreCowork({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 112),
      child: Column(
        children: [
          SelectableText('A Virtual Tour'.allInCaps, style: AppStyles.raleway12Smbd.copyWith()),
          Gap(16),
          SelectableText(
            'Explore Cowork Through Our\n',
            style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .4),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/lens.png', height: 58),
              SelectableText(
                ' Lens',
                style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .6),
              ),
            ],
          ),
          Gap(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.getWidth(.2)),
            child: SelectableText(
              'Experience the essence of Cowork before setting foot in our dynamic spaces. Our immersive video tour gives you a sneak peek into the vibrant atmosphere, cutting-edge facilities, and collaborative energy that define the Cowork experience.',
              style: AppStyles.raleway14Rg.copyWith(height: 2),

              textAlign: TextAlign.center,
            ),
          ),
          Gap(40),
          InkWell(
            // onTap: () => context.go(path),
            hoverColor: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(42),
              ),
              child: SelectableText(
                'Explore Spaces',
                style: AppStyles.raleway14Smbd.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
