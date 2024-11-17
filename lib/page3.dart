import 'package:flutter/material.dart';
import 'package:lesson9/page1/rectangle.dart';
import 'package:lesson9/style/my_button_style.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page1State();
}

class _Page1State extends State<Page3> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _amimation;
  bool value = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _amimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat(reverse: true);
      }
    });
  }

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
                'Анимация с AnimationController',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          FadeTransition(opacity: _amimation, child: const Rectangle()),
          const SizedBox(
            height: 200,
          ),
          Row(
            children: [
              const SizedBox(
                width: 70,
              ),
              ElevatedButton(
                style: MyButtonStyle.buttonStylePage1,
                onPressed: () => setState(() {
                  value = !value;
                  value == true ? _controller.forward() : _controller.stop();
                }),
                child: value
                    ? const Icon(
                        Icons.stop_circle,
                        color: Colors.redAccent,
                        size: 50,
                      )
                    : const Icon(
                        Icons.play_circle,
                        color: Colors.green,
                        size: 50,
                      ),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: MyButtonStyle.buttonStylePage1,
                onPressed: () {
                  Navigator.pushNamed(context, '/A');
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
