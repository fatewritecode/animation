import 'package:flutter/material.dart';
import 'package:lesson9/page1.dart';
import 'package:lesson9/page2.dart';
import 'package:lesson9/page3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Анимация',
      initialRoute: '/A',
      routes: {
        '/A': (context) => const Page1(),
        '/B': (context) => const Page2(),
        '/C': (context) => const Page3(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Freeman",
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[800],
        hintColor: Colors.cyan[600],
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
          titleLarge: TextStyle(
            fontSize: 30.0,
            color: Colors.yellowAccent,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.none,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.yellowAccent,
            fontFamily: 'Hind',
            decoration: TextDecoration.none,
          ),
        ),
      ),
      home: const Page1(),
    );
  }
}
