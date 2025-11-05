import 'package:breej_hub_mobile/core/utils/utils.dart';
import 'package:breej_hub_mobile/pages/home/home_desktop.dart';
import 'package:breej_hub_mobile/pages/home/home_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return isMobile(context) ? HomeMobile() : HomeDesktop();
        },
      ),
    );
  }
}
