import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'SignSight',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E1B4B),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Breaking communication barriers with real-time sign language translation',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 25),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt, size: 18),
          label: const Text('Start Translating'),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E1B4B),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
