import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient Background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF283593),
                Color(0xFF1976D2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Background Circles
        const Positioned(
          top: -50,
          left: -60,
          child: Circle(
            size: 180,
            color1: Color(0xFF006DB3),
            color2: Color(0xFF29B6F6),
          ),
        ),
        const Positioned(
          bottom: -40,
          right: -100,
          child: Circle(
            size: 420,
            color1: Color(0xFF006DB3),
            color2: Color(0xFF29B6F6),
            opacity: 0.8,
          ),
        ),
        Positioned(
          child: Circle(
            size: 150,
            color1: Color.fromRGBO(162, 243, 255, 100),
            color2: Color.fromRGBO(0, 129, 220, 100),
            opacity: 0.8,
          ),
          top: 100,
          left: 100,
          right: 100,
          bottom: 100,
        ),
        // Child content (the rest of the dashboard)
        Positioned.fill(child: child),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  final double size;
  final Color color1;
  final Color color2;
  final double opacity;

  const Circle({
    Key? key,
    required this.size,
    required this.color1,
    required this.color2,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color1.withOpacity(opacity),
            color2.withOpacity(opacity),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: color2.withOpacity(0.8), // Shadow color
            blurRadius: 10.0, // Softness of the shadow
            spreadRadius: 2.0, // Size of the shadow
            offset: Offset(0, 4), // Position of the shadow
          ),
        ],
      ),
    );
  }
}
