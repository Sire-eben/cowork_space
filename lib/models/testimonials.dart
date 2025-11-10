import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class TestimonialModel {
  final String text;
  final String name;
  final String occupation;
  final String image;
  final Color color;

  const TestimonialModel({
    required this.text,
    required this.name,
    required this.occupation,
    required this.image,
    required this.color,
  });
}

List<TestimonialModel> listOfTestimonials = [
  TestimonialModel(
    text:
        "The 24/7 access and secure facilities have been incredibly convenient for my team's flexible schedules. We love the coworking space!",
    name: 'Liam Brown',
    occupation: 'Software Engineer, TechStartup Innovations',
    image: 'assets/images/client1.png',
    color: AppColors.unorganicGreen,
  ),
  TestimonialModel(
    text:
        "The aesthetics of Cowork are inspiring. The attention to detail in the design creates an atmosphere that sparks creativity. It's a place where ideas flow effortlessly, and collaboration happens organically.",
    name: 'Michael Rodriguez',
    occupation: 'Creative Director, DesignCraft Studio',
    image: 'assets/images/client2.png',
    color: AppColors.powerlessGrey,
  ),
  TestimonialModel(
    color: AppColors.skyBlue,
    text:
        "As a freelance designer, I was getting tired of working from home or coffee shops. The coworking space has provided me with a productive and professional environment to focus on my work.",
    name: 'Michael Thompson',
    occupation: 'Graphic Designer, DesignCo',
    image: 'assets/images/client3.png',
  ),
  TestimonialModel(
    color: AppColors.shinyPink,
    text:
        "The coworking space has been a wonderful resource for my team. The open floor plan and dedicated private offices allow us to collaborate and concentrate as needed.",
    name: 'David Wilson',
    occupation: 'Project Manager, SoftwareSolutions LLC',
    image: 'assets/images/client4.png',
  ),
  TestimonialModel(
    color: AppColors.almostOrange,
    text:
        "The flexible membership options and amenities like high-speed internet, printers, and meeting rooms have made this coworking space a perfect fit for my small business.",
    name: 'Alex Nguyen',
    occupation: 'Marketing Consultant, Maverick Marketing',
    image: 'assets/images/client5.png',
  ),
];
