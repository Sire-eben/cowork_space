import 'package:breej_hub_mobile/components/choose_cowork.dart';
import 'package:breej_hub_mobile/components/youtube_player.dart';
import 'package:breej_hub_mobile/core/shared_widgets/image.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 112),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Elevate Your ',
                            style: AppStyles.ralewayGeneral(
                              96,
                              FontWeight.bold,
                            ).copyWith(height: 1.1),
                          ),
                          TextSpan(
                            text: 'Workspace\n',
                            style: AppStyles.ralewayGeneral(
                              96,
                              FontWeight.bold,
                              color: Color(0xffD3F985),
                            ).copyWith(height: 1.1),
                          ),
                          TextSpan(
                            text: 'With ',
                            style: AppStyles.ralewayGeneral(
                              96,
                              FontWeight.bold,
                            ).copyWith(height: 1.1),
                          ),
                          TextSpan(
                            text: 'Cowork',
                            style: AppStyles.ralewayGeneral(
                              96,
                              FontWeight.bold,
                              color: Color(0xffD3F985),
                            ).copyWith(height: 1.1),
                          ),
                        ],
                      ),
                    ),
                    Gap(24),
                    SelectableText(
                      'Welcome to Cowork – where innovation meets collaboration in the heart\nof productivity! Unleash 🚀 your potential in our thoughtfully designed\ncoworking spaces, tailored to inspire creativity and foster connections.',
                      style: AppStyles.raleway14Rg,
                    ),
                    Gap(48),
                    InkWell(
                      // onTap: () => context.go(path),
                      hoverColor: Colors.white,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black, width: 2),
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
              ),
              Gap(32),
              Expanded(
                child: Container(
                  height: 640,
                  width: 640,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.header.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
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
          ),
          Padding(
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
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 112),
            child: Column(
              children: [
                SelectableText(
                  'A Virtual Tour'.allInCaps,
                  style: AppStyles.raleway12Smbd.copyWith(),
                ),
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
          ),
          YoutubeComponent(),
        ],
      ),
    );
  }
}
