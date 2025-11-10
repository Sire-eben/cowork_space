import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(48),
          decoration: BoxDecoration(
            color: AppColors.humbleBlack,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/white logo.png", height: 24),
              Gap(32),
              SelectableText(
                "Join our newsletter to stay up to date on features and releases.",
                style: AppStyles.raleway14Rg.copyWith(color: Colors.white),
              ),
              Gap(24),
              TextField(
                style: AppStyles.raleway14Rg.copyWith(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hint: Text("Enter your email"),
                  hintStyle: AppStyles.raleway14Rg.copyWith(color: Colors.white),
                ),
              ),
              Gap(16),
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
                    'Subscribe',
                    style: AppStyles.raleway14Smbd.copyWith(color: Colors.black),
                  ),
                ),
              ),
              Gap(24),
              SelectableText(
                "By subscribing you agree to with our Privacy Policy and provide consent to receive updates from our company.",
                style: AppStyles.raleway14Rg.copyWith(color: Colors.white),
              ),
              Gap(24),
              Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FooterHeading(text: "Explore More"),
                  FooterNavItem(text: "Home"),
                  FooterNavItem(text: "About"),
                  FooterNavItem(text: "Pricing"),
                  FooterNavItem(text: "Blog"),
                  FooterNavItem(text: "Events"),
                ],
              ),
              Gap(24),
              Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FooterHeading(text: "Stay Connected"),
                  FooterNavItem(text: "Subscribe"),
                  FooterNavItem(text: "Member Stories"),
                  FooterNavItem(text: "Locations"),
                  FooterNavItem(text: "Write for Us"),
                ],
              ),
              Gap(24),
              Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FooterHeading(text: "Follow Us"),
                  FooterNavItem(text: "Facebook"),
                  FooterNavItem(text: "Instagram"),
                  FooterNavItem(text: "X"),
                  FooterNavItem(text: "LinkedIn"),
                  FooterNavItem(text: "Youtube"),
                ],
              ),
            ],
          ),
        ),
        Gap(32),
        SelectableText("© 2024 Cowork. All rights reserved."),
        Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FooterNavItem(text: "Privacy Policy", withUnderline: true),
            FooterNavItem(text: "Terms of Service", withUnderline: true),
            FooterNavItem(text: "Cookies Settings", withUnderline: true),
          ],
        ),
        Gap(64),
      ],
    );
  }
}

class FooterNavItem extends StatelessWidget {
  const FooterNavItem({super.key, required this.text, this.withUnderline = false});
  final String text;
  final bool withUnderline;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SelectableText(
        text,
        style: AppStyles.raleway14Rg.copyWith(
          color: withUnderline ? Colors.black : Colors.white,
          decoration: withUnderline ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}

class FooterHeading extends StatelessWidget {
  const FooterHeading({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text.allInCaps,
      style: AppStyles.raleway12Smbd.copyWith(color: Colors.white),
    );
  }
}
