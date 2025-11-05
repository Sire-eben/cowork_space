import 'package:flutter/material.dart';
import 'package:breej_hub_mobile/core/shared_widgets/page_loader.dart';

class LoadingOverlayScaffold extends StatelessWidget {
  const LoadingOverlayScaffold({super.key, required this.isLoading, required this.child});
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [child, if (isLoading) PageLoaderOverlay()]);
  }
}
