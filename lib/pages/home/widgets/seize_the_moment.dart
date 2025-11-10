import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class SeizeTheMoment extends StatelessWidget {
  const SeizeTheMoment({super.key});

  @override
  Widget build(BuildContext context) {
    bool kMobile = isMobile(context);
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: kMobile ? 64 : 112),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'Seize ',
                style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: kMobile ? null : .4),
              ),
              Image.asset('assets/images/seize.png', height: kMobile ? 48 : 58),
            ],
          ),
          SelectableText(
            ' The Moment –',
            style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: kMobile ? null : .4),
          ),
          SelectableText(
            'Join Cowork',
            style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: kMobile ? null : .4),
          ),
          SelectableText(
            'Today!',
            style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: kMobile ? null : .4),
          ),
          Gap(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kMobile ? 0 : context.getWidth(.2)),
            child: SelectableText(
              "Uncover the transformative power of Cowork as echoed by those who've made it their professional haven. This is more than finding a desk; it's discovering a community that fuels your journey to success.",
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
                color: Colors.black,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(42),
              ),
              child: SelectableText(
                'Claim Your Spot',
                style: AppStyles.raleway14Smbd.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
