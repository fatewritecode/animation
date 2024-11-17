import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const ValueKey('rectangle'),
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.yellowAccent,
      ),
    );
  }
}
