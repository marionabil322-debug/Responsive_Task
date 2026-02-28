import 'package:flutter/material.dart';
import 'package:responsive/features/home/home_view.dart';

void main() {
  runApp(const SignSightApp());
}

class SignSightApp extends StatelessWidget {
  const SignSightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignSight',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      ),
      home: const HomeView(),
    );
  }
}
