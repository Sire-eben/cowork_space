import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class BlogPost {
  final String time;
  final String tag;
  final String topic;
  final String image;
  final Color color;

  const BlogPost({
    required this.time,
    required this.tag,
    required this.topic,
    required this.image,
    required this.color,
  });
}

List<BlogPost> blogPosts = [
  BlogPost(
    time: '7 min read',
    tag: 'Trending',
    topic: 'Navigating the Future: Trends in Modern Coworking Spaces',
    image: 'assets/images/blog1.png',
    color: AppColors.skyBlue,
  ),
  BlogPost(
    time: '5 min read',
    tag: 'Productivity',
    topic: "Mastering Productivity: Tips from Cowork's High Achievers",
    image: 'assets/images/blog2.png',
    color: AppColors.shinyPink,
  ),
  BlogPost(
    time: '10 min read',
    tag: 'Talk',
    topic: "Tech Talk: The Backbone of Cowork's Seamless Experience",
    image: 'assets/images/blog3.png',
    color: AppColors.unorganicGreen,
  ),
];
