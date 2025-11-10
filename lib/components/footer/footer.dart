import 'package:breej_hub_mobile/components/footer/footer_desktop.dart';
import 'package:breej_hub_mobile/components/footer/footer_mobile.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobile(context) ? FooterMobile() : FooterDesktop();
  }
}
