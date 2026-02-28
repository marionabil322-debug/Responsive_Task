import 'package:flutter/material.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'How It Works',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 15),
          const Text('1. Point your camera at sign language gestures.'),
          const Text('2. Press and hold the record button to capture signs.'),
          const Text(
            '3. View the translation as text or listen to voice output.',
          ),
          const Text(
            '4. All translations are saved in your History for future reference.',
          ),
        ],
      ),
    );
  }
}
