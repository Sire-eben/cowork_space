import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/models/blog.dart';
import 'package:breej_hub_mobile/pages/home/widgets/blog_card.dart';
import 'package:flutter/material.dart';

class CoworkChronicles extends StatelessWidget {
  const CoworkChronicles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              "Stay updated on the latest trends in coworking, productivity tips, and success stories that define the Cowork experience.",
              style: AppStyles.raleway14Rg.copyWith(height: 2),

              textAlign: TextAlign.center,
            ),
          ),
          Gap(80),
          Row(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(blogPosts.length, (index) {
              final post = blogPosts[index];
              return BlogCard(post: post);
            }),
          ),
          Gap(64),
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
                'View All',
                style: AppStyles.raleway14Smbd.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
