import 'package:breej_hub_mobile/components/choose_cowork.dart';
import 'package:breej_hub_mobile/components/statistics_widget.dart';
import 'package:breej_hub_mobile/components/testimonial.dart';
import 'package:breej_hub_mobile/components/youtube_player.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/models/faq.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 112),
            child: Row(
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
          Padding(
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
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 112),
            child: Column(
              children: [
                SelectableText(
                  'Cowork in words'.allInCaps,
                  style: AppStyles.raleway12Smbd.copyWith(),
                ),
                Gap(16),
                SelectableText(
                  'Hear It from Our Clients',
                  style: AppStyles.raleway12Smbd.copyWith(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(32),
                Row(
                  spacing: 64,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Testimonial(
                      topMargin: 32,
                      color: AppColors.unorganicGreen,
                      text:
                          "The 24/7 access and secure facilities have been incredibly convenient for my team's flexible schedules. We love the coworking space!",
                      name: 'Liam Brown',
                      occupation: 'Software Engineer, TechStartup Innovations',
                      image: 'assets/images/client1.png',
                    ),
                    Testimonial(
                      color: AppColors.powerlessGrey,
                      text:
                          "The aesthetics of Cowork are inspiring. The attention to detail in the design creates an atmosphere that sparks creativity. It's a place where ideas flow effortlessly, and collaboration happens organically.",
                      name: 'Michael Rodriguez',
                      occupation: 'Creative Director, DesignCraft Studio',
                      image: 'assets/images/client2.png',
                      topMargin: 0,
                    ),
                    Testimonial(
                      topMargin: 64,
                      color: AppColors.skyBlue,
                      text:
                          "As a freelance designer, I was getting tired of working from home or coffee shops. The coworking space has provided me with a productive and professional environment to focus on my work.",
                      name: 'Michael Thompson',
                      occupation: 'Graphic Designer, DesignCo',
                      image: 'assets/images/client3.png',
                    ),
                  ],
                ),
                Row(
                  spacing: 64,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Testimonial(
                      color: AppColors.shinyPink,
                      text:
                          "The coworking space has been a wonderful resource for my team. The open floor plan and dedicated private offices allow us to collaborate and concentrate as needed.",
                      name: 'David Wilson',
                      occupation: 'Project Manager, SoftwareSolutions LLC',
                      image: 'assets/images/client4.png',
                    ),
                    Testimonial(
                      topMargin: 64,
                      color: AppColors.almostOrange,
                      text:
                          "The flexible membership options and amenities like high-speed internet, printers, and meeting rooms have made this coworking space a perfect fit for my small business.",
                      name: 'Alex Nguyen',
                      occupation: 'Marketing Consultant, Maverick Marketing',
                      image: 'assets/images/client5.png',
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 112),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Frequently Asked Questions'.allInCaps,
                        style: AppStyles.raleway12Smbd.copyWith(),
                      ),
                      Gap(16),
                      SelectableText(
                        'Your Roadmap to Coworking Clarity',
                        style: AppStyles.raleway13Bd.copyWith(fontSize: 48),
                      ),
                      Gap(24),
                      Padding(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                        child: SelectableText(
                          'Frequently asked questions ordered by popularity. Remember that if the visitor has not committed to the call to action, they may still have questions (doubts) that can be answered.',
                          style: AppStyles.raleway14Rg,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: List.generate(faqsList.length, (index) {
                      final faq = faqsList[index];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(20),
                                Text(faq.question, style: AppStyles.raleway14Smbd),
                                if (faq.expand) ...[
                                  Gap(16),
                                  Text(faq.answer, style: AppStyles.raleway14Rg),
                                ],
                                Gap(20),
                                Container(height: 1, width: 136, color: Colors.black),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                faq.expand = !faq.expand;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Icon(Icons.arrow_drop_down_circle_outlined),
                            ),
                          ),
                        ],
                      );
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
                      'Seize ',
                      style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .4),
                    ),
                    Image.asset('assets/images/seize.png', height: 58),
                    SelectableText(
                      ' The Moment –',
                      style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .6),
                    ),
                  ],
                ),
                Gap(24),
                SelectableText(
                  'Join Cowork Today!',
                  style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .4),
                ),
                Gap(24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.getWidth(.2)),
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
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 112),
            child: Column(
              children: [
                SelectableText('Cowork Chronicles'.allInCaps, style: AppStyles.raleway12Smbd),
                Gap(16),
                SelectableText(
                  'Insights, Innovation, and ',
                  style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .4),
                ),
                Gap(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/chronicles.png', height: 58),
                    SelectableText(
                      ' Inspiration',
                      style: AppStyles.raleway13Bd.copyWith(fontSize: 48, height: .6),
                    ),
                  ],
                ),
                Gap(24),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.getWidth(.2)),
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
          ),
        ],
      ),
    );
  }
}
