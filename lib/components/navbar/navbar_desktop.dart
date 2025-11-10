import 'package:breej_hub_mobile/core/shared_widgets/image.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).uri.toString();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 12),
      child: Row(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: [
          LocalSvgIcon(Assets.icons.logo.path, size: 75),
          const Spacer(),
          _NavItem(label: 'Home', path: '/', isActive: currentPath == '/'),
          _NavItem(label: 'Book Workspace', path: '/book', isActive: currentPath == '/book'),
          _NavItem(label: 'Shop', path: '/shop', isActive: currentPath == '/shop'),
          _NavItem(label: 'Blog', path: '/blog', isActive: currentPath == '/blog'),
          _NavItem(label: 'Events', path: '/events', isActive: currentPath == '/events'),
          _NavItemWithBorder(
            label: 'Login',
            path: '/login',
            isActive: currentPath == '/login',
            isColor: false,
          ),
          _NavItemWithBorder(
            label: 'Sign Up',
            path: '/signup',
            isActive: currentPath == '/signup',
            isColor: true,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final String path;
  final bool isActive;

  const _NavItem({required this.label, required this.path, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(path),
      child: Text(
        label,
        style: AppStyles.raleway14Rg.copyWith(
          color: isActive ? AppColors.primary : Colors.black87,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class _NavItemWithBorder extends StatelessWidget {
  final String label;
  final String path;
  final bool isActive, isColor;

  const _NavItemWithBorder({
    required this.label,
    required this.path,
    required this.isActive,
    required this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(path),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isColor ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(42),
        ),
        child: Text(
          label,
          style: AppStyles.raleway14Smbd.copyWith(
            color: isColor ? Colors.white : Colors.black,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
