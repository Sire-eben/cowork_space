import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/models/blog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key, required this.post});
  final BlogPost post;

  @override
  Widget build(BuildContext context) {
    bool kMobile = isMobile(context);
    if (kMobile) {
      return Column(
        children: [
          Image.asset(post.image),
          Gap(24),
          Row(
            spacing: 16,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: post.color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SelectableText(post.tag, style: AppStyles.raleway14Smbd),
              ),
              SelectableText(post.time),
            ],
          ),
          Gap(16),
          SelectableText(
            post.topic,
            style: AppStyles.raleway24Smbd.copyWith(fontWeight: FontWeight.bold),
          ),
          Gap(24),
          Row(
            spacing: 20,
            children: [
              SelectableText('Read more'),
              Icon(Icons.chevron_right, color: Colors.black),
            ],
          ),
        ],
      );
    } else {
      return Expanded(
        child: Column(
          children: [
            Image.asset(post.image),
            Gap(24),
            Row(
              spacing: 16,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: post.color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SelectableText(post.tag, style: AppStyles.raleway14Smbd),
                ),
                SelectableText(post.time),
              ],
            ),
            Gap(16),
            SelectableText(
              post.topic,
              style: AppStyles.raleway24Smbd.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap(24),
            Row(
              spacing: 20,
              children: [
                SelectableText('Read more'),
                Icon(Icons.chevron_right, color: Colors.black),
              ],
            ),
          ],
        ),
      );
    }
  }
}
