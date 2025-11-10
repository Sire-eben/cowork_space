import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavbarMobile extends StatefulWidget {
  const NavbarMobile({super.key});

  @override
  State<NavbarMobile> createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  bool _isMenuOpen = false;

  void toggleMenu() => setState(() => _isMenuOpen = !_isMenuOpen);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Navbar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              Text('Cowork', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Spacer(),
              GestureDetector(
                onTap: toggleMenu,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(42),
                  ),
                  child: const Icon(Icons.menu, size: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),

        // Slide-in Menu
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          right: _isMenuOpen ? 0 : -MediaQuery.of(context).size.width,
          top: 0,
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                GestureDetector(
                  onTap: toggleMenu,
                  child: const Icon(Icons.close, color: Colors.white, size: 30),
                ),
                const SizedBox(height: 40),
                _menuItem(context, 'About', '/about'),
                _menuItem(context, 'Pricing', '/pricing'),
                _menuItem(context, 'Blog', '/blog'),
                _menuItem(context, 'Events', '/events'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _menuItem(BuildContext context, String label, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () {
          context.go(route);
          toggleMenu();
        },
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
