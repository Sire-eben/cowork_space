import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PageLoader extends StatelessWidget {
  final String? message;
  final Color? color;
  const PageLoader({super.key, this.message, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          // height: 45,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: Shadows.universal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.halfTriangleDot(size: 35, color: AppColors.primary),
              if (message != null) ...[
                Gap(12),
                Text(message!, textAlign: TextAlign.center, style: AppStyles.raleway14Md),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class PageLoaderWithScaffold extends StatelessWidget {
  final String? message;
  const PageLoaderWithScaffold({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.05),
      body: PageLoader(message: message),
    );
  }
}

class PageLoaderOverlay extends StatelessWidget {
  final String? message;
  const PageLoaderOverlay({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: PageLoader(message: message),
      ),
    );
  }
}
