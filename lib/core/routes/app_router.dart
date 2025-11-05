import 'package:flutter/material.dart';

class PageRouter extends PageRouteBuilder {
  final Widget child;

  PageRouter({required this.child})
      : super(
          transitionDuration: const Duration(milliseconds: 300), // Adjust speed
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Slide transition from right to left (normal navigation effect)
            const begin = Offset(1.0, 0.0); // Start off-screen right
            const end = Offset.zero; // End at normal position
            const curve = Curves.easeInOut; // Smooth animation

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}
