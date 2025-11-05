import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget Function(Size size) builder;
  final Widget? bottomNavBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Key? scaffoldKey;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;
  final bool safeTop;
  final bool safeBottom;
  final Widget? floatingActionButton;

  const BaseScaffold({
    super.key,
    required this.builder,
    this.floatingActionButton,
    this.appBar,
    this.bottomNavBar,
    this.drawer,
    this.endDrawer,
    this.scaffoldKey,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    this.safeTop = true,
    this.safeBottom = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        Size constraints = Size(constraint.maxWidth, constraint.maxHeight);
        return GestureDetector(
          onTap: () {
            //unfocus any active TextField
            FocusScope.of(context).unfocus();
            context.hideKeyboard();
          },
          child: Scaffold(
            floatingActionButton: floatingActionButton,
            backgroundColor: backgroundColor ?? AppColors.white,
            key: scaffoldKey,
            drawer: drawer,
            endDrawer: endDrawer,
            appBar: appBar,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            bottomNavigationBar: bottomNavBar,
            body: SafeArea(
              top: safeTop,
              bottom: safeBottom,
              child: Builder(builder: (_) => builder(constraints)),
            ),
          ),
        );
      },
    );
  }
}
