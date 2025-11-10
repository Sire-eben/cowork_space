import 'package:breej_hub_mobile/components/footer.dart';
import 'package:breej_hub_mobile/pages/home/widgets/chronicles.dart';
import 'package:breej_hub_mobile/pages/home/widgets/cowork_in_words.dart';
import 'package:breej_hub_mobile/pages/home/widgets/elevate_workspace_desktop.dart';
import 'package:breej_hub_mobile/pages/home/widgets/explore_cowork.dart';
import 'package:breej_hub_mobile/pages/home/widgets/faq.dart';
import 'package:breej_hub_mobile/pages/home/widgets/seize_the_moment.dart';
import 'package:breej_hub_mobile/pages/home/widgets/transformative_statistics.dart';
import 'package:breej_hub_mobile/pages/home/widgets/trusted_companies.dart';
import 'package:breej_hub_mobile/pages/home/widgets/why_choose_us.dart';
import 'package:breej_hub_mobile/pages/home/widgets/youtube_player.dart';
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
          ElevateYourWorkspaceDesktop(),
          TrustedCompanies(),
          WhyChooseCowork(),
          ExploreCowork(),
          YoutubeComponent(),
          TransformativeStatistics(),
          CoworkInWords(),
          FrequentlyAskedQuestions(),
          SeizeTheMoment(),
          CoworkChronicles(),
          Footer(),
        ],
      ),
    );
  }
}
