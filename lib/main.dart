import 'package:breej_hub_mobile/components/navbar.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/pages/booking/booking_page.dart';
import 'package:breej_hub_mobile/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const _WithNavbar(child: HomePage()),
        ),
        GoRoute(
          path: '/book',
          name: 'book',
          builder: (context, state) => const _WithNavbar(child: BookingPage()),
        ),
        GoRoute(
          path: '/shop',
          name: 'shop',
          builder: (context, state) => const _WithNavbar(child: BookingPage()),
        ),
      ],
      errorBuilder: (context, state) => const Scaffold(
        body: Center(child: Text('404 — Page Not Found', style: TextStyle(fontSize: 18))),
      ),
    );

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Breej Hub',
      theme: AppTheme.defaultTheme(context),
    );
  }
}

/// Wrapper to keep Navbar consistent across routes
class _WithNavbar extends StatelessWidget {
  final Widget child;
  const _WithNavbar({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Navbar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
