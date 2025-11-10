import 'package:breej_hub_mobile/components/choose_cowork.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class WhyChooseCowork extends StatelessWidget {
  const WhyChooseCowork({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 64),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      'Why Choose ',
                      style: AppStyles.raleway13Bd.copyWith(fontSize: 24),
                    ),
                    Image.asset('assets/images/choose us.png', height: 34),
                  ],
                ),
                SelectableText(' Cowork?', style: AppStyles.raleway13Bd.copyWith(fontSize: 24)),
                Gap(40),
                Column(
                  spacing: 32,
                  children: [
                    ChooseCowork(
                      color: Color(0xffD3F985),
                      icon: Assets.icons.planet,
                      title: 'Flexible Spaces',
                      subtitle:
                          "Whether you're a solopreneur, startup, or an established enterprise, our flexible office solutions cater to your evolving needs.",
                    ),
                    ChooseCowork(
                      color: Color(0xffA6E8F6),
                      icon: Assets.icons.pricing,
                      title: "Transparent Pricing",
                      subtitle:
                          "Choose a plan that suits your budget and business objectives, and experience the value of a premium coworking space without breaking the bank.",
                    ),
                    ChooseCowork(
                      color: Color(0xffFCBEDC),
                      icon: Assets.icons.membership,
                      title: "Tailored Memberships",
                      subtitle:
                          "Whether you prefer the flexibility of a hot desk or the exclusivity of a private office, Cowork offers tailored solutions to suit every working style.",
                    ),
                  ],
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 112),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      'Why Choose ',
                      style: AppStyles.raleway13Bd.copyWith(fontSize: 48),
                    ),
                    Image.asset('assets/images/choose us.png', height: 58),
                    SelectableText(' Cowork?', style: AppStyles.raleway13Bd.copyWith(fontSize: 48)),
                  ],
                ),
                Gap(80),
                Row(
                  spacing: 48,
                  children: [
                    ChooseCowork(
                      color: Color(0xffD3F985),
                      icon: Assets.icons.planet,
                      title: 'Flexible Spaces',
                      subtitle:
                          "Whether you're a solopreneur, startup, or an established enterprise, our flexible office solutions cater to your evolving needs.",
                    ),
                    ChooseCowork(
                      color: Color(0xffA6E8F6),
                      icon: Assets.icons.pricing,
                      title: "Transparent Pricing",
                      subtitle:
                          "Choose a plan that suits your budget and business objectives, and experience the value of a premium coworking space without breaking the bank.",
                    ),
                    ChooseCowork(
                      color: Color(0xffFCBEDC),
                      icon: Assets.icons.membership,
                      title: "Tailored Memberships",
                      subtitle:
                          "Whether you prefer the flexibility of a hot desk or the exclusivity of a private office, Cowork offers tailored solutions to suit every working style.",
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
