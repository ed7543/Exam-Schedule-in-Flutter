import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home.dart';
import 'screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Schedule App 223311',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      ),
      home: const SplashScreen(),
      routes: {
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
