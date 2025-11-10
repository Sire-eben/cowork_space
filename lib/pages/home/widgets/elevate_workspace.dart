import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class ElevateYourWorkspaceDesktop extends StatelessWidget {
  const ElevateYourWorkspaceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 112),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Elevate Your ',
                        style: AppStyles.ralewayGeneral(96, FontWeight.bold).copyWith(height: 1.1),
                      ),
                      TextSpan(
                        text: 'Workspace\n',
                        style: AppStyles.ralewayGeneral(
                          96,
                          FontWeight.bold,
                          color: Color(0xffD3F985),
                        ).copyWith(height: 1.1),
                      ),
                      TextSpan(
                        text: 'With ',
                        style: AppStyles.ralewayGeneral(96, FontWeight.bold).copyWith(height: 1.1),
                      ),
                      TextSpan(
                        text: 'Cowork',
                        style: AppStyles.ralewayGeneral(
                          96,
                          FontWeight.bold,
                          color: Color(0xffD3F985),
                        ).copyWith(height: 1.1),
                      ),
                    ],
                  ),
                ),
                Gap(24),
                SelectableText(
                  'Welcome to Cowork – where innovation meets collaboration in the heart\nof productivity! Unleash 🚀 your potential in our thoughtfully designed\ncoworking spaces, tailored to inspire creativity and foster connections.',
                  style: AppStyles.raleway14Rg,
                ),
                Gap(48),
                InkWell(
                  // onTap: () => context.go(path),
                  hoverColor: Colors.white,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    child: SelectableText(
                      'Claim Your Spot',
                      style: AppStyles.raleway14Smbd.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(32),
          Expanded(
            child: Container(
              height: 640,
              width: 640,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  image: AssetImage(Assets.images.header.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
