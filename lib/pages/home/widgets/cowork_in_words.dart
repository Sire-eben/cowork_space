import 'package:breej_hub_mobile/components/testimonial.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class CoworkInWords extends StatelessWidget {
  const CoworkInWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 112),
      child: Column(
        children: [
          SelectableText('Cowork in words'.allInCaps, style: AppStyles.raleway12Smbd.copyWith()),
          Gap(16),
          SelectableText(
            'Hear It from Our Clients',
            style: AppStyles.raleway12Smbd.copyWith(fontSize: 48, fontWeight: FontWeight.bold),
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
    );
  }
}
