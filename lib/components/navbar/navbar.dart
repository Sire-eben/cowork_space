import 'package:breej_hub_mobile/components/navbar/navbar_desktop.dart';
import 'package:breej_hub_mobile/components/navbar/navbar_mobile.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobile(context) ? NavbarMobile() : NavbarDesktop();
  }
}
