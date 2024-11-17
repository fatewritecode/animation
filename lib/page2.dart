import 'package:flutter/material.dart';
import 'package:lesson9/page1/circle.dart';
import 'package:lesson9/style/my_button_style.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page1State();
}

class _Page1State extends State<Page2> with SingleTickerProviderStateMixin {
  bool value = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-3, -2),
    end: const Offset(3, 5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Анимация изменения положения',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: const Circle(radius: 50),
          ),
          const SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: MyButtonStyle.buttonStylePage1,
                onPressed: () {
                  Navigator.pushNamed(context, '/C');
                },
                child: const Icon(
                  Icons.next_week,
                  size: 50,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
