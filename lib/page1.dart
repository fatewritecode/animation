import 'package:flutter/material.dart';
import 'package:lesson9/page1/circle.dart';
import 'package:lesson9/page1/rectangle.dart';
import 'package:lesson9/style/my_button_style.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool value = false;
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
                'Анимация перехода',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) =>
                ScaleTransition(scale: animation, child: child),
            // виджет для анимации
            child: value ? const Circle(radius: 200) : const Rectangle(),
          ),
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
                }),
                child: value
                    ? const Icon(
                        Icons.rectangle,
                        color: Colors.yellow,
                        size: 50,
                      )
                    : const Icon(
                        Icons.circle,
                        color: Colors.redAccent,
                        size: 50,
                      ),
              ),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: MyButtonStyle.buttonStylePage1,
                onPressed: () {
                  Navigator.pushNamed(context, '/B');
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
