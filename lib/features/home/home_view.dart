import 'package:flutter/material.dart';
import 'package:responsive/features/home/layouts/desktop_layout.dart';
import 'package:responsive/features/home/layouts/mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SignSight',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1E1B4B),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 800) {
            return const MobileLayout();
          } else {
            return const DesktopLayout();
          }
        },
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 800
          ? BottomNavigationBar(
              selectedItemColor: const Color(0xFF1E1B4B),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined),
                  label: 'Translate',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: 'History',
                ),
              ],
            )
          : null,
    );
  }
}
