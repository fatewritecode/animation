import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({super.key, required this.radius});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('circle'),
      height: radius,
      width: radius,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.redAccent,
      ),
    );
  }
}
